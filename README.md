# Harmonic excitation of a SDOF


## Summary

The exact solution of a damped Single Degree Of Freedom (SDOF) system is excited by a harmonic force is calculated [1]. 
It is compared to the numerical solution provided by the Matlab built-in function ode 45, the central difference method, 
Newmark method and the 4th order Runge-Kutta method, the implementation of which is based on the book from S. Rao [2].

## Content

The repositroy contains: 
 - The function RK4.m, which solves numerically the equations of motion of a damped system with the 4th order Runge-Kutta method
 - The function Newmark.m, which solves numerically the equations of motion of a damped system with Newmark's method
 - The function CentDiff.m, which solves numerically the equations of motion of a damped system with the central difference method
 - A Matlab livescript Documentation.mlx for the documentation
 

## References

[1] Daniel J. Inman, Engineering Vibrations, Pearson Education, 2013

[2] Singiresu S. Rao, Mechanical Vibrations,Prentice Hall, 2011
