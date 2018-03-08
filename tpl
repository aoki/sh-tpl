#!/bin/bash -eu

t=$(cat ${1})
compiled=$(cat <<EOFF

cat <<EOF
${t}
EOF
EOFF
)

eval "${compiled}"

