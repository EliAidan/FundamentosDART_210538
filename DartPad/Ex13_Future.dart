void main() {
  
  // Imprime 'Inicio del programa' en la consola
  print('Inicio del programa');
  
  // Llama a la función httpGet y pasa la URL como argumento.
  // Cuando la solicitud sea resuelta (en este caso, después de 1 segundo), ejecuta el callback (value) que imprime el resultado.
  // Si hay un error, lo captura y ejecuta el callback de catchError que imprime el error.
  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      (value){ // Este callback se ejecuta cuando la promesa (Future) se resuelve exitosamente
        print( value ); // Imprime el valor de la respuesta HTTP si todo sale bien
      })
    .catchError( (err) { // Este callback captura errores si ocurre una excepción
    print('Error: $err'); // Imprime el mensaje de error capturado
  });
  
  // Imprime 'Fin del programa' en la consola
  // Esto se ejecuta inmediatamente, antes de que el Future de httpGet se resuelva debido a la naturaleza asíncrona de Dart.
  print('Fin del programa');
}


// Definición de la función httpGet que simula una petición HTTP
Future<String> httpGet( String url ){
  
  // Retorna un Future que se resuelve después de 1 segundo (simulando el tiempo de una petición HTTP)
  return Future.delayed( const Duration(seconds: 1), () {
    
    // Fuerza la generación de un error en la petición HTTP
    throw 'Error en la petición http';
    
    // Si no hubiera un error, esta línea retornaría la respuesta de la petición
    // return 'Respuesta de la petición http';
    
  });
}
