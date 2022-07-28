#!/usr/bin/env bash


CMDL=$(terraform output -json | jq -r 'keys[] as $k | "export \($k)=\(.[$k].value)"')

while read ev; do

$ev

done <<< "${CMDL}"
