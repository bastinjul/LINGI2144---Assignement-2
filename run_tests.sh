#!/bin/bash

mkdir test_evil test_passwd test_watchdog

printf "\n\nCompiling evil malwares\n\n"

for i in {1..10}
do
  gcc -o test_evil/evil_malware_${i} evil/malware_${i}.c
done

printf "\n\nCompiling watchdog malwares\n\n"

for i in {1..10}
do
  gcc -o test_watchdog/watchdog_malware_${i} watchdog/malware_${i}.c
done

printf "\n\nCompiling passwd malwares\n\n"

for i in {1..8}
do
  gcc -o test_passwd/passwd_malware_${i} passwd/malware_${i}.c
done

printf "\n\nRunning malware.yar on test_evil malwares\n\n"

yara malware.yar test_evil

printf "\n\nRunning malware.yar on test_watchdog malwares\n\n"

yara malware.yar test_watchdog

printf "\n\nRunning malware.yar on test_passwd malwares\n\n"

yara malware.yar test_passwd
