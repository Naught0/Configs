#!/bin/env python3

from sys import argv

ICON_ARR = {'focus': '\uf21e',
            'empty': '\uf08a',
            'occupied': '\uf004'}

if __name__ == '__main__':
    out_list = argv[1:]
    desk_list = []
    for desktop in out_list:
        if desktop.startswith('#'):
            desk_list.append(ICON_ARR['focus'])
        elif desktop.startswith(':'):
            desk_list.append(ICON_ARR['occupied'])
        else:
            desk_list.append(ICON_ARR['empty'])

    for idx, desktop in enumerate(desk_list[:]):
        desk_list[idx] = f'%{{A:herbstclient use_index {idx}:}}{desktop}%{{A}}'

    print(' '.join(desk_list))

