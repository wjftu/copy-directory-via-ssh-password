#!/bin/bash

sshpass -p "${3}" ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ${2}@${1} "mkdir -p ${5}" 
sshpass -p "${3}" scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -r ${4} ${2}@${1}:${5}