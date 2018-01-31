# -*- coding: utf-8 -*-
# python3.5

import numpy as np
import matplotlib.pyplot as plt

# Parameter
A = 1.0
b = 1.0
c = 1.0

p = 0.0

sigmav2 = 1.0
sigmaw2 = 2.0

# number of sample
n = 300
N = np.linspace(0, n-1, n)

# noise
v = np.random.normal(0, sigmav2, n)
w = np.random.normal(0, sigmaw2, n)

# create dataset
x = []
sum_v = 0
for v_k in v:
    sum_v += v_k
    x.append(sum_v)
np.array([x])

y = x + w

x_hat = []
x_hat_pri = 0.0

# Kalman Filter
for y_k in y:
    x_pri = A * x_hat_pri
    p_pri = A * p + sigmav2 * b * b
    g = (p_pri * c) / (c * p_pri * c + sigmaw2)
    x_hat_next = x_pri + g * (y_k - c * x_pri)
    p = (1 - g * c) * p_pri
    x_hat_pri = x_hat_next
    x_hat.append(x_hat_next)
np.array([x_hat])
#print x_hat
'''
##########################################
y_k = 1

x_pri = A * x_hat_pri
p_pri = A * p + sigmav2 * b * b
g = (p_pri * c) / (c * p_pri * c + sigmaw2)
x_hat_next = x_pri + g * (y_k - c * x_pri)
p = (1 - g * c) * p_pri
x_hat_pri = x_hat_next
print "x_pri: {0}, p_pri: {1}, g: {2}, x_hat_next: {3}, p: {4}, x_hat_pri: {5}".format(x_pri,p_pri,g,x_hat_next,p,x_hat_pri)
##########################################
'''
# plot
plt.figure(figsize=(8, 4))
plt.plot(N, x, label="true value", color="blue", linewidth=1)
plt.plot(N, y, label="observe value", color="orange", linewidth=1)
plt.plot(N, x_hat, label="guess value", color="green", linewidth=1)
plt.xlabel("k")
plt.ylabel("value")
#plt.title("Kalman Filter")
plt.legend()
plt.show()
