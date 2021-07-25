#!/usr/bin/env bash

killall -q polybar
echo "---" | tee -a /tmp/polybar1.log
polybar screen1 2>&1 & polybar screen2 2>&1 | tee -a /tmp/polybar1.log & disown
echo "Bar launched"

