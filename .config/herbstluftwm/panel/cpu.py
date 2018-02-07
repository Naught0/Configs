#!/bin/env python

import psutil
import sys
import time

while True:
    try:
        print(f'cpu: {psutil.cpu_percent(interval=2)}%')
        sys.stdout.flush()
        time.sleep(2)
    except KeyboardInterrupt:
        exit()
