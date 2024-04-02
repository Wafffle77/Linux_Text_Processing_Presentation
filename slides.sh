#!/bin/bash

if [ $1 == "QUICK" ]; then
        PANDOC_ARGS="--standalone"
else
        PANDOC_ARGS="--self-contained"
end

(
        cat <<EOF
% Text Processing and Regular Expressions
% Ethan Clark
EOF

        for i in $(find slides -name '*.md' | sort); do
                cat $i
                printf '\n\n------------------\n\n'
        done
) | head -n-4 | pandoc -t slidy -o slides.html $PANDOC_ARGS