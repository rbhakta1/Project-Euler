fOld = 2
fOlder = 1
digits = 0
index = 3

while (digits < 1000):
    f = fOld + fOlder
    fOlder = fOld
    fOld = f
    index = index + 1;
    digits = len(str(f))

print(index)


