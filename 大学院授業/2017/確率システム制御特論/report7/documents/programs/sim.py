#!/usr/bin/env python
# -*- coding: utf-8 -*-
# python3.5

import numpy as np
import matplotlib.pyplot as plt

def lkf(y, sigmav2, sigmaw2, A, b, c, p): # Kalman Filter

    x_hat = []
    x_hat_pri = 0.0

    for y_k in y:
        x_pri = A * x_hat_pri
        p_pri = A * p + sigmav2 * b * b
        g = (p_pri * c) / (c * p_pri * c + sigmaw2)
        x_hat_next = x_pri + g * (y_k - c * x_pri)
        p = (1 - g * c) * p_pri
        x_hat_pri = x_hat_next
        x_hat.append(x_hat_next)
        np.array([x_hat])

    return x_hat

def main():
    
    # Set parameter
    A = 1.0
    b = 1.0
    c = 1.0

    p = 0.0

    sigmav2 = 1.0
    sigmaw2 = 2.0

    # Number of sample
    n = 300
    N = np.linspace(0, n-1, n)

    # Make noise
    v = np.random.normal(0, sigmav2, n)
    w = np.random.normal(0, sigmaw2, n)

    # Create dataset
    x = []
    sum_v = 0
    for v_k in v:
        sum_v += v_k
        x.append(sum_v)
        np.array([x])

    y = x + w

    # Kalman Filter
    x_chil = lkf(y, sigmav2, sigmaw2, A, b, c, p)

    # plot
    plt.figure(figsize=(8, 6))
    plt.plot(N, x, label="True value", color="blue", linewidth=1)
    plt.plot(N, y, label="Observed value", color="orange", linewidth=1)
    plt.plot(N, x_chil, label="Estimated value", color="green", linewidth=1)
    plt.xlabel("k")
    plt.ylabel("value")
    plt.legend()
    plt.show()

if __name__ == '__main__':
    main()
