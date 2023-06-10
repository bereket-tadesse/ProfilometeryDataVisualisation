import numpy as np
import matplotlib.pyplot as plt

ax = plt.axes(projection = "3d")

#this is random test file
file1 = open(r"C:\Users\Bereket\Desktop\Summer research\plot\xyz.txt", "r")

#this is axis coordinates from blender sample model
file2_blender = open(r"C:\Users\Bereket\Desktop\Summer research\plot\blendercrack2.txt", "r")

final_dataset= []

#skipping the first 5 lines
line = file2_blender.readline()
line = file2_blender.readline()
line = file2_blender.readline()
line = file2_blender.readline()
line = file2_blender.readline()

#read the 16 lines with xyz
i = 0
while i <= 14:
    row = []
    temp_list = line.split()
    
    for j in range(len(temp_list)):
        if(j!=0): #skipping the first non number character
            # print(temp_list[j])
            row.append(float(temp_list[j]))
    print (row)
    final_dataset.append(row)
    line = file2_blender.readline()
    i+=1

#Extracting x data from the data set
x_data = []

for i in range(len(final_dataset)):
    x_data.append(final_dataset[i][0])

#Extracting y data from the data set
y_data = []

for i in range(len(final_dataset)):
    y_data.append(final_dataset[i][1])

#Extracting y data from the data set
z_data = []

for i in range(len(final_dataset)):
    z_data.append(final_dataset[i][2])

print(x_data)
print(y_data)
print(z_data)

# x_data= np.arange(0,10,0.1)
# y_data= np.arange(0,10,0.1)


# X,Y,Z = np.meshgrid(/)

# Z = np.meshgrid(z_data)

surf = ax.plot_trisurf(x_data, y_data,z_data)
plt.show()