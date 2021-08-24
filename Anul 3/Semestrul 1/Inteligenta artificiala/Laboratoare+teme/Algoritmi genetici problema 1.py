import numpy as np
import math
import random

# converteste informatia binara in numarul zecimal corespunzator
def to_number(x):
    nr = 0
    for b in x:
        nr = 2 * nr + b
    return nr

# calculeaza fitness function pentru membrii populatiei
def f(a):
    f_values = []
    for seq in a:
        nr = to_number(seq)
        f_values.append(float('{:.4f}'.format(math.pow(nr, -1))))
    return f_values

# calculeaza probabilitatea pentru membrii populatiei
def p(f):
    p_values = []
    f_total = sum(f)
    p_percent = 1 / f_total
    for value in f:
        p_values.append(float('{:.3f}'.format(p_percent * value)))
    return p_values

# alege la intamplare o noua populatie din cea precedenta
def get_rand_A(a, p_values):
    for i in range(6):
        aux = random.choices(a, weights = p_values, k = 1)
        new_a = []
        for sublist in aux:
            for val in sublist:
                new_a.append(val)
        a[i] = new_a
    return a

# alege la intamplare un bit (pozitia)
def get_rand_bit():
    return random.randrange(6) + 1

# alege la intamplare un membru al populatiei
def get_rand_seq():
    return random.randrange(6)
    
def crossover(a1, a2, b):
    for i in range(6 - b, 6):
        aux = a1[i]
        a1[i] = a2[i]
        a2[i] = aux
    return a1, a2

# decide daca se produce sau nu mutatie
def mutation_trigger():
    p_mutation = 0.036
    p_nothing = 1 - p_mutation
    check = random.choices([0, 1], weights = [p_nothing, p_mutation])
    return check[0]

# produce mutatia
# a_i reprezinta membrul populatiei
# poz reprezinta pozitia acestuia in populatie 
def mutation(a_i, seq):
    print('Mutation:')
    bit = get_rand_bit() + 1
    print(f'bit {bit}')
    print(f'pozitia {seq}')
    a_prev = a_i[:]
    a_i[6 - bit] = (a_i[6 - bit] + 1) % 2
    print(f'{join(a_prev)} -> {join(a_i)} \n')
    return a_i

# formatare pentru afisarea informatiei codificata binar
def join(a_i):
    return ''.join(str(b) for b in a_i)

def afis(a, f_i, p_i):
    for i in range(6):
        print(f'a{i + 1}: {join(a[i])} | value: {to_number(a[i])} | f{i + 1}: {f_i[i]} | p{i + 1}: {p_i[i]}')
    f_total = float('{:.4f}'.format(sum(f_i)))
    p_total = float('{:.0f}'.format(sum(p_i)))
    print(f'Total | f: {f_total} | p: {p_total}')
    print('-' * 80)

# initializare populatie initiala
a = [
    [0, 1, 1, 0, 1, 0], 
    [0, 0, 1, 0, 1, 1], 
    [1, 1, 0, 1, 1, 0], 
    [0, 1, 0, 0, 1, 1], 
    [1, 0, 0, 1, 1, 1], 
    [0, 1, 0, 1, 1, 0]]

# calcul fitness function-uri si probabilitati
f_i = f(a)
p_i = p(f_i)

# nr maxim de generatii generate
nr_generations = 100

# generatia 0
print('Generatia 0:')
afis(a, f_i, p_i)

f_total = float('{:.4f}'.format(sum(f_i)))
i = 0

while f_total < 1 and i < nr_generations:
    
    a = get_rand_A(a, p_i)
    
    # crossover
    for j in range(0, 6, 2):
        b = get_rand_bit()
        a[j], a[j + 1] = crossover(a[j], a[j + 1], b)
    
    # mutatie
    if mutation_trigger() == 1:
        seq = get_rand_seq()
        a[seq] = mutation(a[seq], seq + 1)
    
    # calcul fitness function-uri si probabilitati pt noua generatie obtinuta
    f_i = f(a)
    p_i = p(f_i)
    
    print(f'Generatia {i + 1}:')
    afis(a, f_i, p_i)
    
    f_total = float('{:.4f}'.format(sum(f_i)))
    i += 1