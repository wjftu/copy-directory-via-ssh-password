#!/bin/bash

sshpass -p "${3}" ssh ${2}@${1} "mkdir -p ${5}" 
sshpass -p "${3}" scp -r ${4} StrictHostKeyChecking=no ${2}@${1}:${5}