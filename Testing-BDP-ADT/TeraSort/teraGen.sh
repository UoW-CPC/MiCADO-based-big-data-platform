#!/bin/sh

time yarn jar share/hadoop/mapreduce/hadoop-*examples*.jar  teragen \
-Dmapreduce.map.output.compress=true \
-Dmapreduce.map.output.compress.codec=org.apache.hadoop.io.compress.Lz4Codec \
-Dmapred.map.tasks=50 \
 `expr 1024 \* 1024 \* 10000` /terasort-input