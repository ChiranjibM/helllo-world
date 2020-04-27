#!/bin/bash

latest_commit = git log --diff-filter=D --summary | grep commit | head -1
deleted_file_names=git show $latest_commit | grep a/ | awk '{print $2}' | grep a | sed 's/a//' | sed 's/^.//'
echo deleted_file_names

