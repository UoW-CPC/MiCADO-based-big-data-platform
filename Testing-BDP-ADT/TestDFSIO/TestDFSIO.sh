#!/bin/sh

# 10 files; each of size 100GB 
time yarn jar share/hadoop/mapreduce/hadoop-*test*.jar TestDFSIO -write -nrFiles 10 -fileSize 100GB
time yarn jar share/hadoop/mapreduce/hadoop-*test*.jar TestDFSIO -read -nrFiles 10 -fileSize 100GB