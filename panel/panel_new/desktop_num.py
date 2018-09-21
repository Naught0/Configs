#!/bin/env python3

from sys import argv

if __name__ == '__main__':
    out_list = argv[1:]
    for desk in out_list:
        if desk.startswith('#'):
            print(out_list.index(desk) + 1)
