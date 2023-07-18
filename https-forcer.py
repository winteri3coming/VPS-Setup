#!/bin/python3
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-f',dest='f')
args = parser.parse_args()

with open(args.f) as f:
    hosts = f.readlines()

    for host in hosts:
        #        host = host.strip()
        if "https" in host:
            print(host.strip())
        if "http:" in host:
            replaced = host.replace('http','https')
            if replaced in hosts:
                continue
            else:
                print(host.strip())
