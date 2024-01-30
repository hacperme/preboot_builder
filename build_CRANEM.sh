#!/usr/bin/bash

chmod 777 -R src/*
cd src/CRANEL/apps/boot2
make clean && make
cd ../preboot
make clean && make BOARD=cortexr-arom-crane AROMVERSION=2019.01.15