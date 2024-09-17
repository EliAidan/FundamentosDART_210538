void main() {
  // Practica05: Tipo de Dato Dinamico (Dynamic - Comodin)
  
  // Se puede declara sin inicializar
  dynamic errorMessage;
  print(""" El valor inicial de errorMessage es $errorMessage
  Que por defecto permite establecer valores nulos
  """);
  
  //Ahora le asignamos valor al string 
  errorMessage = "El usuario y la contraseña no coincide";
  
  print(""" --------------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  En este caso fue asignado un String """);
  
  //Pero al ser dinamico podemos asignar un entero
  errorMessage = 404;
  
  print(""" --------------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  En este caso fue asignado un Int """);
  
  // Podemos asignar un Boolean
  errorMessage = false;
  
  print(""" --------------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  Cuando el sistema funciona correctamente el mensaje de error puede ser FALSO """);
  
  //
  errorMessage = [400,404,500,502,505];
  
  print(""" --------------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  En caso del que el sistema detecte varios errores podria agregarlos a un a Lista """);
  
  //
  errorMessage = {125,"Usuarios no encontrado",true,-1025.16,'A'};
  
  print(""" --------------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  O incluso un conjunto (SET) de datos """);
  
  //
  errorMessage = () => true;
  
  print(""" --------------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  Que en este caso es el resultado de una funcion """);
  
}