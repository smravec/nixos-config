#!/usr/bin/env bash

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap sk || setxkbmap us
