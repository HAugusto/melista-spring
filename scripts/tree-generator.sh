#!/usr/bin/env bash

set -e

OUTPUT="${1:-./docs/tree.md}"
PATH_TO_TREE="${2:-./}"
IGNORE="${3:-.git|target}"

{
    echo '### Estrutura do projeto ('$(date '+%Y-%m-%d')')'
    echo '```text'
    tree "$PATH_TO_TREE" -a -I "$IGNORE"
    echo '```'
} > "$OUTPUT"

echo "Árvore Gerada: $OUTPUT"

exit 0