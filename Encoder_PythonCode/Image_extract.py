from keras.datasets import mnist 
from matplotlib import pyplot
import matplotlib.pyplot as plt
import numpy as np
import random
import math

(train_x, train_y), (test_x, test_y) = mnist.load_data() #mnist api that reads the image database and separates image data
d = train_x[0] 

time = 1
dt = 0.01
time_steps = int(time/dt)

temp = []
temp_rc = []
for row in range(0,28):
    for col in range(0,28):
        #"%02X " % d[row][col], end="" the % is the string substitution operation, 
        # %02x is the template and d[row][col] is the value, the % causes d[row][col] to fill %02x
        temp.append(d[row][col])
        temp_rc.append(d[row][col])
        #print("%02x " % d[row][col], end="") #%02X prints at least 2 digits, padding 0s if needed. 
        #print(temp[col])
    #print("")

#normalizing pixels from 0-255
temp = [float(x)/255.0 for x in temp]

#scalinf the pixels by lambda
temp_rc = [hex(int(x/4)) for x in temp_rc]
print(temp_rc)
file = open("pixels.txt","w")
y = "\n".join([str(x) for x in temp_rc])
file.write(y)
file.close()
#y_axis = [i for i in range(784)]
#x_axis = np.linspace(0,time,(time_steps+1))

##Rate coding
#rand_num = np.random.rand(1,time_steps)
#num = 0
#for j in temp_rc:
#    num = num + 1
#    for i in range(time_steps):
#        if (j > rand_num[0][i]):
#            plt.scatter(i, num)
#
#plt.ylim(0,800)
#plt.show()
#print("Done")
#
###TTFS coding
#tetha0 = 1
#tau = 0.015
#pth = []
#
#for steps in x_axis:
#        pth.append(tetha0 * math.exp(-steps/tau))
#       
##plt.plot(x_axis, pth)
##plt.show()
#num = 0
#for j in temp:
#    x = 0
#    for i in pth:
#        if j > i:
#            plt.scatter(pth.index(i), num)
#            break
#    num = num + 1
#
#plt.ylim(0,800)
#plt.xlim(0,len(x_axis))
#plt.show()