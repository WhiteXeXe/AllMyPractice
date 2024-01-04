cmake_minimum_required(VERSION 3.16)
project(Personal_notes C)

set(CMAKE_C_STANDARD 11)

add_executable(Personal_notes main.c sqlite3.c)
