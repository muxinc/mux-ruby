#! /usr/bin/env bash

# This just calls ruby in a standard wrapper so we only have
# to change these scripts for a new SDK (and can potentially
# extract the rest into a separate dependency later).

ruby -I "$(dirname "$(realpath "$0")")/../../lib" -e 'require "mux_ruby/version"; puts MuxRuby::VERSION'