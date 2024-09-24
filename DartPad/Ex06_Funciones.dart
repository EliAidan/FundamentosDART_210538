void main() {

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
  
}