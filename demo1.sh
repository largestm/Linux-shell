#!/usr/bin/env bash
# 计划任务脚本-每隔指定秒数请求指定路由

step=3 #间隔的秒数
start_date="20250101"
end_date="20251201"
while [[ "$start_date" -le "$end_date" ]] ;
do
    date_month=`date -d "${start_date}" +%Y-%m`

    # 拼接月份开始-结束日期
    start_date_month=$date_month"-01"
    end_date_month=$date_month"-31"

    # curl请求
    curl http://www.demo.com/api/v1/abc?start_date=$start_date_month\&end-date=$end_date_month

    sleep $step
    start_date=$(date -d "${start_date}+1months" +%Y%m%d)
done