#!/bin/sh

status="$(pomodoro status 2>/dev/null | head -n 1 | cut -c 1-5)"


if [ -z "$status" ]; then
  echo "{\"text\":\"󰔟 $status\",\"tooltip\":\"$status\",\"class\":\"active\"}"
else
  echo "{\"text\":\"󰔟 $status\",\"tooltip\":\"$status\",\"class\":\"active\"}"
fi

