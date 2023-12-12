#!/bin/python3

import sys
Import = [w.strip() for w in open(sys.argv[1])] #Not mine.
Parsed = [y for y in Import if not y.startswith('>')] #Not mine.
Search = ['A','C','G','T']
Count = [0,0,0,0]
Table = []
Chars = []
Final = []
Temp = []
x = 0
v = 0
l = 0

for a in Parsed:
    Temp[:] = a
    Chars.append(list(Temp))
for e in Temp:
    Table.append(list(Count))
for b in range(0,len(Chars[0])):
    for c in range(0, len(Parsed)):
        i = 0
        for d in Search:
            if d == Chars[c][b]:
                Table[x][i] += 1
            i += 1
    x += 1
for f in Table:
    Lookup = dict(zip(Search, Table[l]))
    for h in Search:
        for i in Search:
            if Lookup[i] > Lookup[h]:
                Lookup[h] = 0
    for j in Search:
        if Lookup[j] == 0:
            del Lookup[j]
    Final.append(list(Lookup))
    l += 1
for l in range(0, len(Final)):
    print(Final[l][0], end="")
print()
for f in range(0, 4):
    print(Search[v],":", end=" ")
    for e in range(0, len(Table)):
        print(Table[e][v], end=" ")
    v += 1
    print()
