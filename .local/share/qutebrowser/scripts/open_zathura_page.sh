#!/bin/sh

ps aux | grep "zathura /tmp/page.pdf" | grep -v grep || zathura /tmp/page.pdf
