import csv

data = [
    ['Jean', '25 ans', 'Paris'],
    ['Marie', '30 ans', 'Lyon'],
    ['Pierre', '22 ans', 'Marseille'],
    ['Sophie', '35 ans', 'Toulouse']
]

with open('personnes.csv', mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(data)
