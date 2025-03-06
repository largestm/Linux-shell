#!/usr/bin/bash

step=3 #间隔描述
for((i=0;i<60;i=(i+$step)))
do
    curl http://www.demo.com/api/v1/abc?id=1\&month=12

    sleep $step
done
exit 0