# Harmonic excitation of a SDOF

[![View Harmonic excitation of a SDOF on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://se.mathworks.com/matlabcentral/fileexchange/53854-harmonic-excitation-of-a-sdof)
[![Donation](https://camo.githubusercontent.com/a37ab2f2f19af23730565736fb8621eea275aad02f649c8f96959f78388edf45/68747470733a2f2f77617265686f7573652d63616d6f2e636d68312e707366686f737465642e6f72672f316339333962613132323739393662383762623033636630323963313438323165616239616439312f3638373437343730373333613266326636393664363732653733363836393635366336343733326536393666326636323631363436373635326634343666366536313734363532643432373537393235333233303664363532353332333036313235333233303633366636363636363536353264373936353663366336663737363737323635363536653265373337363637)](https://www.buymeacoffee.com/echeynet)

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
