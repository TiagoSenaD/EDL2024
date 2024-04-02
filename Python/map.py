def my_map(func, seq):
    if seq == []:
        return []
    else:
        for i in range(len(seq)):
            seq[i] = func(seq[i])
        return seq
    
def multiply_by_2(x):
    return x * 2

teste = my_map(multiply_by_2, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

print(teste)