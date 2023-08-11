#!/bin/bash
# Set the directory name

cur_path="$(dirname $(realpath $0))"
sh $cur_path/ipopt.sh
sh $cur_path/ifopt.sh
