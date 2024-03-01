#!/bin/bash
#
# Copy current working directory into clipboard
# name inspired by pbcopy.

pwd | pbcopy | tr -d '\n'
