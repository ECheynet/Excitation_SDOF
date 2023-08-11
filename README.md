# Harmonic excitation of a SDOF

[![View Harmonic excitation of a SDOF on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://se.mathworks.com/matlabcentral/fileexchange/53854-harmonic-excitation-of-a-sdof)
<a href="https://www.buymeacoffee.com/echeynet" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 25px !important;width: 120px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

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
