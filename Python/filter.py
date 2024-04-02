def rec_filter(func, seq):
    if seq == []:
        return []
    else:
        if func(seq[0]):
            return [seq[0]] + rec_filter(func, seq[1:])
        else:
            return rec_filter(func, seq[1:])

def is_a(x):
    if(x == "a"):
        return True
    return False

teste = rec_filter(is_a, ["a", "b", "c", "a", "d", "e", "a"])

print(teste)