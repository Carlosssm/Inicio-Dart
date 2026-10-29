// @Carlosssm
// 29/10/2026

class Modulo {
  String nombre;
  int cantidadRAs;
  int horas;

  Modulo(this.nombre, this.cantidadRAs, this.horas);

  @override
  String toString() {
    return '$nombre: $cantidadRAs - ($horas horas)';
  }
}

class Alumno {
  String nombre;
  String apellidos;
  String dni;
  int edad;
  List<Modulo> modulos;
  bool repetidor;

  Alumno(this.nombre, this.apellidos, this.dni, this.edad,
      this.modulos, this.repetidor);

  @override
  String toString() {
    String texto = '$nombre $apellidos ($edad) - $dni: $modulos';

    if (repetidor) {
      texto += ' (repetidor)';
    }

    return texto;
  }
}

// Ejercicio 2d
Map<String, Modulo> modulosDisponibles = {
  'M01': Modulo('M01', 4, 125),
  'M10': Modulo('M10', 5, 300),
  'M11': Modulo('M11', 3, 78),
  'M12': Modulo('M12', 4, 175),
};

// Ejercicio 3
void ordenarModulos(Alumno alumno) {
  alumno.modulos.sort((a, b) => a.nombre.compareTo(b.nombre));
}

// Ejercicio 4
bool buscarModulo(Alumno alumno, String nombreModulo) {
  for (Modulo modulo in alumno.modulos) {
    if (modulo.nombre == nombreModulo) {
      return true;
    }
  }

  return false;
}

// Ejercicio 5
void validarNumeroDeModulos(Alumno alumno) {
  if (alumno.modulos.length >= 4) {
    print('Curso completo');
  } else {
    for (String clave in modulosDisponibles.keys) {
      if (alumno.modulos.length >= 4) {
        break;
      }

      if (!buscarModulo(alumno, clave)) {
        alumno.modulos.add(modulosDisponibles[clave]!);
      }
    }
  }

  ordenarModulos(alumno);
}

void main() {
  Alumno alumno = Alumno(
    'Javier',
    'Garcia',
    '12345678A',
    20,
    [
      modulosDisponibles['M12']!,
      modulosDisponibles['M01']!,
    ],
    true,
  );

  ordenarModulos(alumno);
  print('¿Cursa M10? ${buscarModulo(alumno, 'M10')}');
  validarNumeroDeModulos(alumno);
  print(alumno);
}