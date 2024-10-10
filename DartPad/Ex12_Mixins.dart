abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  print("Instanciacion la clase Delfin y accediendo a sus funciones");
  flipper.nadar();
  print("----------------------------------------------------------");
  final batman = Murcielago();
  print("Instanciacion la clase Murcielago y accediendo a sus funciones");
  batman.caminar();
  batman.volar();
  print("----------------------------------------------------------");
  final donald = Pato();
  print("Instanciacion la clase Pato y accediendo a sus funciones");
  donald.caminar();
  donald.volar();
  donald.nadar();
  print("----------------------------------------------------------");
}