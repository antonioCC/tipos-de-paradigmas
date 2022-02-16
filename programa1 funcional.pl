%el oso es mas grande que el perro y el raton
%mas_grande(oso,perro,raton).

%el elefante es mas grande que el caballo
%el caballo es mas grande que el perro
%el perro es mas grande que el raton

mas_grande(elefante,caballo).
mas_grande(caballo,perro).
mas_grande(perro,raton).

%cambiamos elefante, caballo y perro con las variables A,B,C
%el elefante es mucho mas grande que el perro si, el elefante es mas grande que
%el caballo y el caballo es mas grande que el perro

muchomas_grande(A,C):-mas_grande(A,B),mas_grande(B,C).