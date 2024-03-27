#!/bin/bash

sensors -j > "sensors.$(date +%m%d%Y%H%M%S)".json
