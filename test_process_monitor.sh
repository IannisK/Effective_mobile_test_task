#!/bin/bash

log_file="/var/log/test_process_monitor/monitoring.log"

previous_pid=""
process_pid=$(pgrep test)
if [[ -n "$process_pid" ]]; then
    if ! curl -s "https://test.com/monitoring/test/api" > /dev/null; then
        echo "$(date +'%F %T') ERROR Monitoring server is unavailable" >> "$log_file"
    fi
    if [[ "$previous_pid" != "$process_pid" ]] && [[ -n "$previous_pid" ]]; then
        echo "$(date +'%F %T') INFO Process restarted" >> "$log_file"
        previous_pid="$process_pid"
    fi
else 
    previous_pid=""
#   echo "$(date +'%F %T') INFO Process is not running" >> "$log_file" - согласно заданию нет необходимости, но я бы добавил
fi