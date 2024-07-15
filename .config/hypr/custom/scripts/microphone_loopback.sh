#!/bin/bash

if pactl unload-module module-loopback 2>&1 | grep -q 'Failed'; then
    pactl load-module module-loopback latency_msec=1
fi
