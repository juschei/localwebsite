#!/bin/bash

asy $1 -render 16 -outformat "png"
convert "$1"".png" -fuzz 5% -transparent white "$1"".png"
