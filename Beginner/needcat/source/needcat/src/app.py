#!/usr/local/bin/python

import time


FLAG = "UCS{just_1ntro_for_y0u_h0w_t0_connect_1nto_TCP_CONNection}"

def typing(text, delay=0.1):
    for i in text:
        time.sleep(delay)
        print(i, end="", flush=True)
    print()

def banner():
    with open("banner.txt") as f:
        print(f.read())



if __name__ == "__main__":
    banner()
    typing("Welcome to needcat service!")
    typing("This is a simple service that will introduce you to NetCat program!!!")
    typing("Hope you learn something from this ^_^")
    print()
    typing("This is flag for you......")
    typing(FLAG)
    print()
    typing("Thanks, and goodbye, see you in the ethical hacking surface.")