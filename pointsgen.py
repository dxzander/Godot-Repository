import random
import pandas as pd
import numpy as np

totalHPoints = 45
totalVPoints = 25
hLinePosition = 1080 / 8
vLinePosition = 1920 / 4
hPointPosition = 0
vPointPosition = 0
points = []
offset = 25
posOrNeg = 1
max_displacement = 10

print('hewwo! owo')
print('welcome to the point generation utility for paper cutoff effects! uwu')
vorhflag = input('first, are we doing an horizontal or vertical line? owo? (h/v) ')
if vorhflag == 'h':
    for point in range(totalHPoints):
        if point == totalHPoints - 1:
            points.append(points[0])
        else:
            if point == 0:
                posOrNeg = 0
            else:
                if point // 2 == 0:
                    posOrNeg = 1
                else:
                    posOrNeg = -1
            hPointPosition = round((point * 1920 / totalHPoints) + (random.uniform(-1, 1) * max_displacement), 2)
            vPointPosition = round((hLinePosition + (posOrNeg * offset) + (random.uniform(-1, 1) * max_displacement)), 2)
            points.append([hPointPosition, vPointPosition])
elif vorhflag == 'v':
    for point in range(totalVPoints):
        if point == totalVPoints - 1:
            points.append(points[0])
        else:
            if point == 0:
                posOrNeg = 0
            else:
                if point // 2 == 0:
                    posOrNeg = 1
                else:
                    posOrNeg = -1
            hPointPosition = round((hLinePosition + (posOrNeg * offset) + (random.uniform(-1, 1) * max_displacement)), 2)
            vPointPosition = round((point * 1080 / totalVPoints) + (random.uniform(-1, 1) * max_displacement), 2)
            points.append([hPointPosition, vPointPosition])
else:
    print('Está usando este software de traducción de forma incorrecta.')

print('ok, here are the points! :3')
print(points)

arr = np.asarray(points)
if vorhflag == 'h':
    pd.DataFrame(arr).to_csv('hpoints.csv')
    print('saved to file hpoints.csv nwn')
else:
    pd.DataFrame(arr).to_csv('vpoints.csv')
    print('saved to file vpoints.csv nwn')

