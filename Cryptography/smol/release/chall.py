from Crypto.Util.number import *
import random

with open('flag.txt','rb') as f:
    m = bytes_to_long(f.read().strip())

def blum_prime(bits=512):
    while True:
        p = getPrime(bits)
        if p % 4 == 3:
            return p

p = blum_prime(512)
q = blum_prime(512)
n = p * q

phi = (p - 1) * (q - 1)

bound = max(3, int(n**0.25) // 8) 
while True:
    d = random.randint(2, bound)
    if GCD(d, phi) == 1:
        break

e = inverse(d, phi)
c = pow(m, e, n)

with open('output.txt','w') as f:
    f.write(f"{n}\n{e}\n{c}\n")
