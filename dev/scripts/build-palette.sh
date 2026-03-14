#!/bin/bash
# Build NTM palette.toml from markdown prompt files in dev/

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEV_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT="$DEV_DIR/dist/palette.toml"

mkdir -p "$DEV_DIR/dist"
> "$OUTPUT"

# Process all .md files in dev/ (excluding scripts/ and dist/ subdirs)
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

  cat >> "$OUTPUT" << ENTRY
[[palette]]
key = "$key"
label = "$label"
category = "$category"
prompt = """
$prompt
"""

ENTRY
done

count=$(grep -c '^\[\[palette\]\]' "$OUTPUT" 2>/dev/null || echo 0)
echo "Built $OUTPUT with $count prompts"

