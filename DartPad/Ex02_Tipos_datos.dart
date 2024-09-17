void main() {
  //Cadenas (String)
  final String pokemon = 'Rayquaza';
  
  // Enteros (Int)
  final int hp = 100;
  
  // Booleanos (Boolean)
  final bool isAlive = true;
  
  // Forma de listar una cadena de Strings (Forma1)
  final List<String> abilities = ['impostor'];
  
  // Forma de listar una cadena de Strings (Forma2)
  final sprites = <String>['rayquaza/front.png','rayquaza/back.png'];
  
  print(""" El pokemon que elegiste es: $pokemon
  ----------------------------------------------------------------------
  Las estadisticas de $pokemon son:
  Vida (HP) : $hp
  Estatus de Vida : $isAlive
  Habilidades : $abilities
  Imagenes : $sprites
  """);
}