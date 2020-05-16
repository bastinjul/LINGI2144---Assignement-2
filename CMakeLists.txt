cmake_minimum_required(VERSION 3.16)
project(Tests C)

set(CMAKE_C_STANDARD 99)

add_executable(Tests main.c evil/malware_1.c evil/malware_2.c evil/malware_3.c evil/malware_4.c evil/malware_6.c evil/malware_7.c evil/malware_8.c evil/malware_9.c evil/malware_10.c watchdog/malware_1.c watchdog/malware_2.c watchdog/malware_4.c watchdog/malware_3.c watchdog/malware_5.c watchdog/malware_6.c watchdog/malware_7.c watchdog/malware_8.c watchdog/malware_9.c watchdog/malware_10.c
        passwd/malware_1.c passwd/malware_2.c passwd/malware_4.c passwd/malware_3.c passwd/malware_5.c passwd/malware_6.c passwd/malware_7.c passwd/malware_8.c)