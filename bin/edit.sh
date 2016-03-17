#!/bin/bash
exec emacsclient -t -s /tmp/emacs$(id -u)/server -c "$@"
