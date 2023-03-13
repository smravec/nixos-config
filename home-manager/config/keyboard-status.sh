#! /usr/bin/env bash

setxkbmap -query | grep -q "layout:\s\+us" && echo "us" || echo "sk"
