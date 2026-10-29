// @Carlosssm
// 29/09/2026

import 'dart:math';

void main() {
  print("EJERCICIO 1");

  double circulo1 = 78;
  double circulo2 = 38;

  double radio1 = sqrt(circulo1 / pi);
  double radio2 = sqrt(circulo2 / pi);

  print("$radio1, $radio2");

  double suma = (radio1 + radio2);
  print("La suma de los radios es: $suma");

  print("EJERCICIO 2");

  print("a");
  for (int i = 99; i >= 50; i -= 2) {
    print(i);
  }

  print("b");

  int numero = 20;

  while (numero <= 50) {
    print(numero);

    if (numero % 2 == 0) {
      print("El número es par");
    }

    numero++;
  }

  print("EJERCICIO 3");

  // Declarar dos variables con valores numericos superior a 10 y de tipo double

  double numero1 = 21;
  double numero2 = 28;

  // Mostrar la progresión numérica de los números pares desde el 0 hasta el primer número declarado

  for (int i = 0; i < numero1; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // Mostrar progresión numérica de la segunda variable hasta 0 con un bucle while

  while (numero2 >= 0) {
    print(numero2);
    numero2--;
  }

  // Mostrar progresión numérica de la primera variable hasta la segunda con un bucle do while

  numero2 = 28;

  do {
    print(numero1);
    numero1++;
  } while (numero1 <= numero2);

  print("EJERCICIO 4");

  // Declarar un array de números enteros

  List<int> numeros = [15, 223, 334, 154, 99, 656];

  print("Números pares:");

  for (int numero in numeros) {
    if (numero % 2 == 0) {
      print(numero);
    }
  }

  print("Números impares:");

  for (int numero in numeros) {
    if (numero % 2 != 0) {
      print(numero);
    }
  }

  print("EJERCICIO 5");


  print("El resultado del triangle A es: " + numero1.toString());
  print("El resultado del triangle B es: $numero2");


    // add() ---> Añade un elemento al final de la lista
    // remove() ---> Elimina un elemento de la lista
    // length ---> Devuelve el número de elementos de la lista

}