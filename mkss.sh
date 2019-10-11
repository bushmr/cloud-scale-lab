#!/bin/bash
NODE=node1
IP=10.20.0.4
staller=/usr/lpp/mmfs/5.0.3.2/installer/spectrumscale

$staller setup -s $IP
$staller config gpfs -c sirius
$staller callhome disable
$staller node add -a -g -q -m -n $NODE
$staller nsd add -p $NODE -fs fs1 /dev/sdc /dev/sdd
$staller install
$staller deploy