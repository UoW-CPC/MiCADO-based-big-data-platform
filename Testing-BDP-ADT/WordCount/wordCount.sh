#!/bin/sh

hadoop fs -mkdir /wordcount
echo 'MiCADO is open-source and a highly customisable multi-cloud orchestration and auto-scaling framework for Docker containers, orchestrated by Kubernetes.' > testfile.txt
hadoop fs -put testfile.txt /wordcount
hadoop fs -ls -R /
yarn jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.1.jar wordcount /wordcount/testfile.txt /out