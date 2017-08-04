#!/bin/sh -xe

mosquitto_sub -t 'quintic/data' | grep --line-buffered 5a160001 | xargs -i mosquitto_pub -t quintic/cmd -m 'vibrate'
