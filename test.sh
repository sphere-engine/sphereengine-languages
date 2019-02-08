#!/bin/bash

EXIT_CODE=0

shopt -s globstar
for file in **/*.json; do
    python -m json.tool < $file >/dev/null 2>/dev/null
    if [[ $? != 0 ]]; then
        EXIT_CODE=1
        echo "Parse JSON failed: $file"
    fi;
done

for filepath in languages/*; do
    language_id=$(basename $filepath)
    python tests/analyze_content.py $language_id
    if [[ $? != 0 ]]; then
        EXIT_CODE=1
    fi;
done

if [[ $EXIT_CODE = 0 ]]; then
    echo "OK"
else
    echo ""
    echo "FAILED"
fi;

exit $EXIT_CODE