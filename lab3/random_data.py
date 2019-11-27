#! /usr/env/python3

import random

length = 100
fd = open("data.txt",'w')

randlist = []
for i in range(length):
    fd.write(str(random.randint(-1024,1023)))
    fd.write('\n')


