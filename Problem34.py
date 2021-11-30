# -*- coding: utf-8 -*-
"""
Created on Thu Sep  9 21:22:27 2021

@author: Raj
"""
import math
sum = list()
hit = list()
for x in range (10,10000000):
    
    digits = list(str(x))
    total = 0;
    for y in range(0,len(digits)):
        
        num = int(digits[y])
        factorial = math.factorial(num)
        total = total + factorial
    sum.append(total)

    if total == x:
        hit.append(x)
    