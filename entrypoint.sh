#!/bin/bash

sshpass -p ${3} scp -r ${4} ${2}@${1}:${5}