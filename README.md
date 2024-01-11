# CatenaryODE - MATLAB Code for Catenary Profile

## Introduction

This MATLAB script, `CatenariaODE`, is designed to compute and visualize the profile of a catenary, a curve formed by a suspended chain or cable. In the context of electrical engineering, catenaries play a crucial role in the design of overhead lines for efficient power distribution.
![image](https://github.com/DEFITOSO/Catenary/assets/101463417/fedbd8ed-4abb-4758-8ec7-899ff0efba84)

## Catenary in Electrical Distribution

In electrical distribution systems, catenaries are employed to determine the natural shape that an electric conductor cable assumes under the influence of gravity. This natural curve is crucial in optimizing tension, stress distribution, and overall stability of overhead power lines, ensuring reliable transmission of electricity over significant distances.

## Usage

To use the script, follow these steps:

1. Open MATLAB.
2. Run the `CatenariaODE` script.
3. The script will prompt you to input initial parameters such as `x0`, `xf`, `y0`, `yf`, and `alpha`, representing specific coordinates and a parameter affecting the catenary shape.

## Code Explanation

The MATLAB script consists of three main parts:

### 1. Main Function (`CatenariaODE`):

- Sets initial parameters.
- Computes the root `z0` using the fzero method.
- Solves the Ordinary Differential Equation (ODE) using the ode45 solver.
- Plots the catenary profile.

### 2. ODE System Function (`sist`):

- Defines the system of ODEs representing the catenary.
- Calculates derivatives for position `y` and `z`.

### 3. Root-finding Function (`raiz`):

- Implements a function to find the correct root `zo` using the shooting method.

## Example Input Parameters

```matlab
alpha = 0.0125;
x0 = -20; xf = 55; y0 = 15; yf = 35; 
