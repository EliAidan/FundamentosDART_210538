void main () {
  var myName = 'Elí A.';
  String myLastName = 'Melo';
  final int myDNI = 210538;
  late final int myAge;
  
  //Corregir mi nombre
  myName = 'Elí Aidan';
  // myDNI = 210539; Esto ocasiona un error porque el tipo de variable es 'final' por lo tanto no puede modificarse
  
  print('Hola $myName $myLastName, tu matricula es: $myDNI y tu edad no la conozco, porque no se cuando naciste'); //Interpolacion de Strings, si se quiere implementar expresiones se usan '{}'
  
  //Interpolando el valor de las variables con metodos de manipulacion o transformacion
  print('Hola ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad no la conozco, porque no se cuando naciste');
}