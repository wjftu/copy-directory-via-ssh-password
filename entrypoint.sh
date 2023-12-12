#!/bin/bash

sshpass -p "${3}" scp -r ${4} StrictHostKeyChecking=no ${2}@${1}:${5}