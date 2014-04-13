#!/bin/sh

session=$(basename $(pwd))
uxterm  -T $session -fullscreen -e /bin/bash -c "transient-session $session"
