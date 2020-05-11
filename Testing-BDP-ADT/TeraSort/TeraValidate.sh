#!/bin/sh

yarn jar share/hadoop/mapreduce/hadoop-*examples*.jar teravalidate \
-Dmapred.map.tasks=100 \
-Dmapred.reduce.tasks=100 \
/terasort-output /terasort-report