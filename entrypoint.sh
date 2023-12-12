#!/bin/bash
echo ${1}
sshpass -p "${3}" scp -r ${4} ${2}@${1}:${5}