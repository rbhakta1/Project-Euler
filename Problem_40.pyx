wholenum = '0'
for x in range(1, 1000000):
    currentnum = x
    wholenum = wholenum+str(currentnum)

digits = [int(d) for d in wholenum]
total = int(wholenum[1])*int(wholenum[10])*int(wholenum[100])*int(wholenum[1000])*int(wholenum[10000])*int(wholenum[100000])*int(wholenum[1000000])
print(total)