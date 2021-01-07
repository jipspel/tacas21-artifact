#!/bin/bash
set -e
set -x

./run_one.sh nrp 5,1 vanilla 0.1
./run_one.sh nrp 6,1 vanilla 0.1
./run_one.sh nrp 7,1 vanilla 0.1
./run_one.sh nrp 8,1 vanilla 0.1
./run_one.sh nrp 9,1 vanilla 0.1
./run_one.sh nrp 10,1 vanilla 0.1
./run_one.sh nrp 11,1 vanilla 0.1
./run_one.sh nrp 12,1 vanilla 0.1
./run_one.sh nrp 13,1 vanilla 0.1
./run_one.sh nrp 14,1 vanilla 0.1
./run_one.sh nrp 15,1 vanilla 0.1
./run_one.sh evade 1,2,0,1 vanilla 0.1
./run_one.sh evade 1,2,1,1 vanilla 0.1
./run_one.sh evade 1,2,3,1 vanilla 0.1
./run_one.sh evade 1,2,0,1 vanilla 0.1
./run_one.sh evade 1,2,1,2 vanilla 0.1
./run_one.sh evade 1,2,3,2 vanilla 0.1
./run_herman.sh 11,10 vanilla 0.1
./run_herman.sh 11,15 vanilla 0.1
./run_herman.sh 13,15 vanilla 0.1
./run_herman.sh 13,25 vanilla 0.1
./run_herman.sh 13,35 vanilla 0.1
./run_one.sh maze 25 vanilla 0.1
./run_one.sh maze 1000 vanilla 0.1
./run_one.sh maze 10000 vanilla 0.1
