import random


def generate_4_random_and_unique_numbers():
    pool = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    random_numbers = []
    for index in range (0, 7):
        index = random.randint(0, len(pool)-1)
        random_numbers.append(pool[index])
        del pool[index]

    return random_numbers
