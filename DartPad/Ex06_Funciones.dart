void main() {
<<<<<<< HEAD
  final double totalCarlist;
  // 1. Llamado de una función sin parámetros
  greetEveryone();

  // 2. Llamado de la función que retorna valores
  // a) Sin almacenar el dato en una variable
  print("El día de hoy es: ${getDayNumber()} del mes.");

  // b) Almacenando el valor de la función en una nueva variable
  final int diaMes = getDayNumber();
  print("En tres días será: ${diaMes + 3}");

  // 3. Llamado de una función con un solo parámetro obligatorio
  // a) Llamado correcto
  print(greetSomeone("Eli"));

  // b) En caso de que la función esté declarada como <dynamic>
  print(greetSomeone(4));
  print(greetSomeone(-312));
  print(greetSomeone(3.1416));
  print(greetSomeone(true));
  print("----------------------------------------------------------------");

  // c) Mismo experimento pero ahora con la función de parámetros tipados
  // print(greetSomeoneTyped("Romualdo"));
  // print(greetSomeoneTyped(4));
  // print(greetSomeoneTyped(-312));
  // print(greetSomeoneTyped(3.1416));
  // print(greetSomeoneTyped(true));

  // 3.2
  // print(greetSomeone()); // No se puede ejecutar porque si no se definen los parámetros de una función, por default están definidos como obligatorios

  // 4. Llamado de una función con parámetros opcionales
  //4.1 Enviando parametros
  print(greetHourOfDay("Eli", 20));
  //4.2 solo enviando el obligatorio
  print(greetHourOfDay("Eli",null));

  //5. FUNCIONES LAMBDA - las funciones lamdda, o mejor conocidas como funciones anonimas o funciones simplificadas
  //se ejecutan de manera simple y no frecuente en la ejecucion de un programa o sistema
  var calculaCosto = (double productQuantity, double productprice,
                      double percentageDiscount) => (productQuantity * productprice)*((100-percentageDiscount)/100);
  double PrecioProducto = 5;
  double cantidadProducto = 125.5;
  double descuento = 2.5;
  print("""
  Costo del producto: ${PrecioProducto};
  Cantidad: ${cantidadProducto};
  Descuento: ${descuento}
  --------------------------------------
  Costo del Crrito de Compras: ${calculaCosto(cantidadProducto,PrecioProducto,descuento)}
        """);

  // 6.0 Llamado de una funcion con parametros nombrados
  print(infoCarListStatus(buyerName: "Lita"));


  // 6.1 Llamado de una funcion con los parametros en desorden posicional

  print(infoCarListStatus(
  status: "En espera de pago",
  amountCarList: 2468.12,
  buyerName: "Aidan"));




}


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


//  FUNCIONES Y PARÁMETROS 

// 1. FUNCIÓN SIN PARÁMETROS
void greetEveryone() {
  print("Hellooo, everyone");
}

// FUNCIÓN SIN PARÁMETROS QUE RETORNA DATOS
int getDayNumber() {
  DateTime now = DateTime.now();
  return now.day;
}

// 3. FUNCIÓN QUE RECIBE UN PARÁMETRO, EN DART SI NO SE ESPECIFICA COMO OPCIONAL, SIEMPRE SERA OBLIGATORIO
String greetSomeone(dynamic personName) {
  return "Hola, ${personName}";
}

// 3.1 Tipando el parámetro de entrada
String greetSomeoneTyped(String personName) {
  return "Hola, ${personName}";
}

// 4. FUNCIÓN CON PARÁMETROS OPCIONALES
// int? puede ser opcional  -NullSafety
String greetHourOfDay(String personName, [int? hourDay]) {
  hourDay ??= DateTime.now().hour; // Si hora es null, se asigna la fecha actual
  print("Hora:${hourDay}");
  String saludo;

  if (hourDay >= 6 && hourDay < 12) {
      saludo = "Buenos días";
  } else if (hourDay >= 12 && hourDay < 18) {
      saludo = "Buenas tardes";
  } else {
      saludo = "Buenas noches";
  }

  return "${saludo},${personName}";
}

  String infoCarListStatus(
  {required String buyerName,
  double amountCarList = 0.0,
  String status = "Seleccion de productos"}) {
      return "El carrito de compras de : ${buyerName}, tiene un total de: \$${amountCarList} y actualmente esta en status: ${status}";


=======

  final double totalCarList;
  // 1. Llamado a una funcion sin parametros
  greetEveryone();
  
  // 2. Llamado de una funcion que retorna valores
  // a) Sin almacenar el valor de una variable
  print("Hoy es el dia numero: ${getDayNumber()} del mes.");
  
  //b) Almacenando el valor de la funcion en una nueva variable para posteriormente utilizarla
  final int diaMes;
  diaMes = getDayNumber();
  print("En tres dias será: ${diaMes+3}");
  
  // 3. Llamado de una funcion con un solo parametro obligatorio
  // a) Llamado Correcto
  print(greetSomeone("Elí"));
  // b) En caso de que la funcion este declarada como <dynamic>
  print(greetSomeone(4));
  print(greetSomeone(-312));
  print(greetSomeone(3.141516));
  print(greetSomeone(true));
  print("---------------------------------------------------------------------------------------");
  // 3.1 Ahora hacemos el mismo experimento pero con la funcion de parametros tipados
  /*print(greetSomeoneTyped(4));
  print(greetSomeoneTyped(-312));
  print(greetSomeoneTyped(3.141516));
  print(greetSomeoneTyped(true));*/
  
  // 3.2 
  // print(greetSomeone()); // Esta no se puede ejecutar porque si no se define los parametros de una
  // funcion por default estan definidos como obligatorios
  
  // 4. Llamado de una funcion con parametros opcionales.
  // 4.1 Enviando ambos parametros.
  print(greetHourOfDay("Elí", 9));
  //4.2 Solo enviando el obligatorio
  print(greetHourOfDay("Aidan", null));

  // FUNCIONES LAMBDA - Las funciones lambda, mejor conocidas como funciones anonimas o funciones simplificada
  // se ejecutan de manera simple y no frecuente en la ejecucion de un programa o sistema
  //Solo pueden llevar una sola intruccion o una sola linea de comando
  var calculaCosto = (double productQuantity, double productPrice, double percentageDiscount) => (productQuantity * productPrice) * ((100 - percentageDiscount)/100);

  double cantidadProducto = 5;
  double precioProducto = 125.50;
  double descuento = 2.5;
  print(""" 
  Costo del producto: ${precioProducto}
  Cantidad: ${cantidadProducto}
  Descuento: ${descuento}
  ----------------------------------------------------
  Costo del carrito de compras: ${calculaCosto(cantidadProducto, precioProducto, descuento)}
  """);
}

// FUNCIONES Y PARAMETROS

// Declaracion
// 1. FUNCION SIN PARAMETROS, SIN RETORNO DEL VALOR
void greetEveryone(){
  print("Hola  a Todos");
}
// 2. FUNCION SIN PARAMETROS QUE RETORNA DATOS 
getDayNumber()
{
  DateTime now = DateTime.now();
  int day = now.day;
  return day;
}

// 3. FUNCION QUE RECIBE UN PARAMETRO, EN DART SI NO SE ESPECIFICA COMO OPCIONAL SIEMPRE SERA OBLIGATORIO
String greetSomeone(personName)
{
  return ("Hola, ${personName}");
}

// 3.1 TIPAMOS EL PARAMETRO DE ENTRADA
String greetSomeoneType(String personName){
  return ("Hola, ${personName}");
}

// 4. FUNCION CON PARAMETROS OPCIONALES
// int? Puede ser opcional - Nullsafety
String greetHourOfDay(String personName, int? hora){
  hora ??= DateTime.now().hour;
  print("Hora: ${hora}");
  String saludo;
  if(hora >= 6 && hora<12){
    saludo = "Buenos dias";  
  }
  else if(hora>12 && hora <18){
    saludo = "Buenas tardes";
  }
  else{
    saludo = "Buenas noches";
  }
  return "${saludo}, ${personName}";
  
>>>>>>> 88d39afde2ac017c9bc3eefc160d6a0c03e38177
}