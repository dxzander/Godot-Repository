spawn_points = []
start_y = 18
start_z = 0
tmp_x = []
tmp_y = []
len_x = 0
len_y = 0
mv = 60

for start_x in range (0, 33+18, 2):
    tmp_x = []
    tmp_y = []

    if start_x < 33:
        for y in range(start_y, -1, -1):
            tmp_y.append(y)
        for x in range(start_x, -1, -1):
            tmp_x.append(x)
    else:
        start_y -= 2
        for y in range(start_y, -1, -1):
            tmp_y.append(y)
        for x in range(32, -1, -1):
            tmp_x.append(x)

    len_x = len(tmp_x)
    len_y = len(tmp_y)

    if len_x <= len_y:
        start_z = len_x
    else:
        start_z = len_y

    for z in range(0, start_z):
        spawn_points.append((tmp_x[z] * mv, tmp_y[z] * mv))

print(*spawn_points, sep = '\n')