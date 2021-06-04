#!/usr/bin/env bash

function displaytime {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  printf "%02d %02d:%02d:%02d\n" $D $H $M $S
}

PID=$(pgrep -x openvpn)
if [[ $? == 0 ]]
then
  VPN_CONFIG_FILE="$(ps -o "command" --no-headers ${PID} | grep -Po '(/[a-zA-Z0-9].*\.ovpn)' | awk -F/ '{print $NF}')"
  UPTIME="$(displaytime $(ps -o "etimes" --no-headers ${PID}))"
  echo "${VPN_CONFIG_FILE} ${UPTIME}"
else
  echo ""
fi
