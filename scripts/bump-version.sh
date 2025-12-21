#!/bin/bash
# Calculates new semantic version based on conventional commits since last tag

set -e

PLUGIN_JSON="plugins/solo-founder-toolkit/.claude-plugin/plugin.json"

# Get current version from plugin.json
CURRENT_VERSION=$(grep -o '"version": *"[^"]*"' "$PLUGIN_JSON" | sed 's/"version": *"\([^"]*\)"/\1/')

if [ -z "$CURRENT_VERSION" ]; then
  echo "Error: Could not read version from $PLUGIN_JSON"
  exit 1
fi

echo "Current version: $CURRENT_VERSION"

# Parse version components
IFS='.' read -r MAJOR MINOR PATCH <<< "$CURRENT_VERSION"

# Get the last tag or use initial commit if no tags exist
LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null || echo "")

if [ -z "$LAST_TAG" ]; then
  # No tags exist, get all commits
  COMMIT_RANGE="HEAD"
  echo "No previous tags found, analyzing all commits"
else
  COMMIT_RANGE="$LAST_TAG..HEAD"
  echo "Analyzing commits since: $LAST_TAG"
fi

# Analyze commits to determine version bump type
HAS_BREAKING=false
HAS_FEAT=false
HAS_FIX=false

while IFS= read -r commit_msg; do
  # Check for breaking changes (! after type or BREAKING CHANGE in body)
  if echo "$commit_msg" | grep -qE '^[a-z]+(\([^)]+\))?!:|BREAKING CHANGE:'; then
    HAS_BREAKING=true
  fi
  # Check for features
  if echo "$commit_msg" | grep -qE '^feat(\([^)]+\))?:'; then
    HAS_FEAT=true
  fi
  # Check for fixes
  if echo "$commit_msg" | grep -qE '^fix(\([^)]+\))?:'; then
    HAS_FIX=true
  fi
done <<< "$(git log $COMMIT_RANGE --pretty=format:"%s" 2>/dev/null)"

# Determine bump type and calculate new version
if [ "$HAS_BREAKING" = true ]; then
  MAJOR=$((MAJOR + 1))
  MINOR=0
  PATCH=0
  BUMP_TYPE="major"
elif [ "$HAS_FEAT" = true ]; then
  MINOR=$((MINOR + 1))
  PATCH=0
  BUMP_TYPE="minor"
elif [ "$HAS_FIX" = true ]; then
  PATCH=$((PATCH + 1))
  BUMP_TYPE="patch"
else
  echo "No version-bumping commits found (feat, fix, or breaking changes)"
  echo "new_version=$CURRENT_VERSION" >> "$GITHUB_OUTPUT" 2>/dev/null || true
  echo "bumped=false" >> "$GITHUB_OUTPUT" 2>/dev/null || true
  exit 0
fi

NEW_VERSION="$MAJOR.$MINOR.$PATCH"
echo "Bump type: $BUMP_TYPE"
echo "New version: $NEW_VERSION"

# Update plugin.json
if [ "$(uname)" = "Darwin" ]; then
  # macOS
  sed -i '' "s/\"version\": *\"[^\"]*\"/\"version\": \"$NEW_VERSION\"/" "$PLUGIN_JSON"
else
  # Linux
  sed -i "s/\"version\": *\"[^\"]*\"/\"version\": \"$NEW_VERSION\"/" "$PLUGIN_JSON"
fi

# Update package.json if it exists
if [ -f "package.json" ]; then
  if [ "$(uname)" = "Darwin" ]; then
    sed -i '' "s/\"version\": *\"[^\"]*\"/\"version\": \"$NEW_VERSION\"/" "package.json"
  else
    sed -i "s/\"version\": *\"[^\"]*\"/\"version\": \"$NEW_VERSION\"/" "package.json"
  fi
fi

echo "Updated $PLUGIN_JSON to version $NEW_VERSION"

# Set outputs for GitHub Actions
echo "new_version=$NEW_VERSION" >> "$GITHUB_OUTPUT" 2>/dev/null || true
echo "bumped=true" >> "$GITHUB_OUTPUT" 2>/dev/null || true
echo "bump_type=$BUMP_TYPE" >> "$GITHUB_OUTPUT" 2>/dev/null || true
