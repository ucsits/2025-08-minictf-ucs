# eter
from Crypto.Util.number import *
from sage.all import *

def wiener(e, n):
    m = 12345
    c = pow(m, e, n)
    lst = continued_fraction(Integer(e)/Integer(n))
    conv = lst.convergents()
    for i in conv:
        k = i.numerator()
        d = int(i.denominator())
        try:
            m1 = pow(c, d, n)
            if m1 == m:
                print(d)
                return d
        except:
            continue
    return -1

def main():
    with open ('output.txt', 'r') as f:
        n = int(f.readline().strip())
        e = int(f.readline().strip())
        c = int(f.readline().strip())

    d = wiener(e, n)
    print(long_to_bytes(pow(c, d, n)))

if __name__ == '__main__':
    main()  