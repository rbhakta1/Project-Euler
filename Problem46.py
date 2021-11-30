# -*- coding: utf-8 -*-
"""
Created on Fri Sep 10 15:38:14 2021

@author: Raj
"""

# Generate list of odd composite numbers

def isComposite(n):
 
    # Corner cases
    if (n <= 1):
        return False
    if (n <= 3):
        return False
 
    # This is checked so that we can skip
    # middle five numbers in below loop
    if (n % 2 == 0 or n % 3 == 0):
        return True
    i = 5
    while(i * i <= n):
         
        if (n % i == 0 or n % (i + 2) == 0):
            return True
        i = i + 6
         
    return False

composites = list()

for i in range(4,100):
    
    if isComposite(i) == True:
        if (i % 2) != 0:
            composites.append(i)



