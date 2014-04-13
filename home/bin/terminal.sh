#!/bin/sh

session=$(basename $(pwd))
uxterm  -T $session -fullscreen -e /bin/bash -l -c "transient-session $session"
