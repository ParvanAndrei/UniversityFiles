import random
from operator import itemgetter
n = 50
c = 10

c_list = []

for i in range(0, n):
    ind = []
    for j in range(0, c):
        ind.append(float(random.randint(0, 1)))
    c_list.append(ind)


# Swap function
def imperechere(l1, l2):
    l1[0], l2[5] = l2[5], l1[0]
    l1[1], l2[6] = l2[6], l1[1]
    l1[2], l2[7] = l2[7], l1[2]
    l1[3], l2[8] = l2[8], l1[3]
    l1[4], l2[9] = l2[9], l1[4]
    l1[5], l2[0] = l2[0], l1[5]
    l1[6], l2[1] = l2[1], l1[6]
    l1[7], l2[2] = l2[2], l1[7]
    l1[8], l2[3] = l2[3], l1[8]
    l1[9], l2[4] = l2[4], l1[9]


count = 1
ff = 1000

while count <= 1000 and ff != 0:
    print("Generatia " + str(count) +" :")
    if count > 1:
        for elem in c_list:
            elem.pop()
    for elem in c_list:
        s = 0
        p = 1
        for i in range(0, c):
            if elem[i] == 0:
                s += (i+1)
            elif elem[i] == 1:
                p *= (i+1)
            ff = abs(s-36)/36 + abs(p-360)/360
        elem.append(ff)


    sorted_list = sorted(c_list, key=lambda x: x[10])


    sorted_list.pop()

    copy = sorted_list[0]

    sorted_list.append(copy)

    nr1 = random.randint(0, 48)
    nr2 = random.randint(0, 48)



    imperechere(sorted_list[nr1], sorted_list[nr1+1])
    imperechere(sorted_list[nr2], sorted_list[nr2+1])

    #mutatiile
    sorted_list[random.randint(0, 49)][random.randint(0, 9)] = sorted_list[random.randint(0, 49)][random.randint(0, 9)]
    sorted_list[random.randint(0, 49)][random.randint(0, 9)] = sorted_list[random.randint(0, 49)][random.randint(0, 9)]
    sorted_list[random.randint(0, 49)][random.randint(0, 9)] = sorted_list[random.randint(0, 49)][random.randint(0, 9)]
    sorted_list[random.randint(0, 49)][random.randint(0, 9)] = sorted_list[random.randint(0, 49)][random.randint(0, 9)]
    sorted_list[random.randint(0, 49)][random.randint(0, 9)] = sorted_list[random.randint(0, 49)][random.randint(0, 9)]

    for elem in sorted_list:
        print(elem)

    count += 1
print("\n")
print("Fitness function = " + str(sorted_list[49][10]))
print("Cartile vor fi distribuite astfel:")
sum = 0
mult = 1
pachet1 = []
pachet2 = []
for i in range(0, 10):
    if sorted_list[49][i] == 0:
        pachet1.append(i+1)
        sum += (i+1)
    elif sorted_list[49][i] == 1:
        pachet2.append(i+1)
        mult *= (i+1)
print("In primul pachet vom avea cartile cu numerele " + str(pachet1))
print("Suma numerelor inscriptionate pe cartile din primul pachet este: " + str(sum))

print("In primul pachet vom avea cartile cu numerele " + str(pachet2))
print("Produsul numerelor inscriptionate pe cartile din pachetul al doilea este: " + str(mult))
