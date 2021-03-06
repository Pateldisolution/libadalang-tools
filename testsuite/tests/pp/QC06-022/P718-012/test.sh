gnatmake -q -f -g -O0 -gnata normalize.adb
normalize split_lines_before_vertical_bars.adb > normalized_split_lines_before_vertical_bars.adb
gnatpp \
    --pipe \
    --vertical-enum-types \
    --vertical-array-types \
    --vertical-named-aggregates \
    --vertical-case-alternatives \
    --based-grouping=4 \
    --call_threshold=0 \
    --decimal-grouping=3 \
    --eol=unix \
    --insert-blank-lines \
    --par_threshold=0 \
    --separate-loop-then \
    --split-line-before-op \
    --use-on-new-line \
    -M132 \
    -cl3 \
    \
    -nM \
  normalized_split_lines_before_vertical_bars.adb
