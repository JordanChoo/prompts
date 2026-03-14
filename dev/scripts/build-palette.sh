#!/bin/bash
# Build NTM command_palette.md from markdown prompt files in dev/

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEV_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT="$DEV_DIR/dist/command_palette.md"

mkdir -p "$DEV_DIR/dist"

# Write header
cat > "$OUTPUT" << HEADER
# Custom NTM Command Palette
#
# Format:
#   ## Category Name
#   ### command_key | Display Label
#   The prompt text (can be multiple lines)

HEADER

# Track categories to group prompts
declare -A categories

# First pass: collect all prompts by category
for file in "$DEV_DIR"/*.md; do
  [ -f "$file" ] || continue

  key=$(sed -n 's/^key: *//p' "$file")
  label=$(sed -n 's/^label: *//p' "$file")
  category=$(sed -n 's/^category: *//p' "$file")

  # Skip files without proper frontmatter
  if [ -z "$key" ] || [ -z "$label" ] || [ -z "$category" ]; then
    echo "Skipping $(basename "$file") - missing frontmatter fields"
    continue
  fi

  prompt=$(awk '/^---$/{n++; next} n>=2' "$file")
  
  # Append to category array
  categories["$category"]+="### $key | $label
$prompt

"
done

# Second pass: write categories and their prompts
for category in "${!categories[@]}"; do
  echo "## $category" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
  echo "${categories[$category]}" >> "$OUTPUT"
done

count=$(grep -c '^### ' "$OUTPUT" 2>/dev/null || echo 0)
echo "Built $OUTPUT with $count prompts"

