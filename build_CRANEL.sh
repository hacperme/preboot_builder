#!/usr/bin/bash

chmod 777 -R src/*
cd src/CRANEL/apps/boot2
make clean && make
cd ../preboot
make clean && make BOARD=crane AROM_VERSION=20211016 RIOT_VERSION_OVERRIDE=2022.05.28