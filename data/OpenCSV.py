import csv


def read_csv_file(filename):

    data = []
    with open(filename, 'r') as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            print(row)
            data.append(row)
    return data

