#!/bin/python
#File: reporter.py
#Author: Wenbin Xiao
#Date: 06/12/205

import sys

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

    def disable(self):
        self.HEADER = ''
        self.OKBLUE = ''
        self.OKGREEN = ''
        self.WARNING = ''
        self.FAIL = ''
        self.ENDC = ''

def INFO(string):
    print(bcolors.HEADER + str(string) + bcolors.ENDC)

def OK(string):
    print(bcolors.OKGREEN + str(string) + bcolors.ENDC)

def WARN(string):
    print(bcolors.WARNING + str(string) + bcolors.ENDC)

def ERRO(string):
    print(bcolors.FAIL + str(string) + bcolors.ENDC)
    sys.exit(1)

if __name__ == "__main__":
    ok = "I'm OK"
    info = "I'm INFO"
    warn = "I'm WARN"
    erro = "I'm ERRO"

    INFO(info)
    OK(ok)
    WARN(warn)
    ERRO(erro)
