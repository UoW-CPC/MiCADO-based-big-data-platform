#!/bin/sh

time yarn jar share/hadoop/mapreduce/hadoop-*examples*.jar  terasort \
-Dmapreduce.map.output.compress=true \
-Dmapreduce.map.output.compress.codec=org.apache.hadoop.io.compress.Lz4Codec \
-Dmapreduce.task.io.sort.factor=250 \
-Dmapred.reduce.tasks=50 \
-Dmapreduce.terasort.output.replication=2 \
 /terasort-input /terasort-output