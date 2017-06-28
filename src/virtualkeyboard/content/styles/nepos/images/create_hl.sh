#!/bin/bash

TARGET=${1%.*}_highlight.svg


cp "${1}" "${TARGET}"
sed -i 's/\#565658/\#7fdcff/g' "${TARGET}"
sed -i 's/\#ABABAB/\#7fdcff/g' "${TARGET}"
sed -i 's/\#343434/\#7fdcff/g' "${TARGET}"


