from sys import argv
def gcdofint(a,b):
    if (b==0):
        return a
    else:
        return gcdofint(b,a%b)


a=int(argv[1])
b=int(argv[2])
print(a,b)
print(gcdofint(a,b))
