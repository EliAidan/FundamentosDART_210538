void main() async {
  
  // Imprime 'Inicio del programa' en la consola
  print('Inicio del programa');
  
  // Bloque try-catch para manejar errores
  try {
    // Llama a la función httpGet de manera asíncrona usando 'await'
    // La ejecución se detiene en esta línea hasta que la función httpGet finalice.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( value ); // Si la petición es exitosa, imprime el resultado.
    
  } catch (err) {
    // Si hay un error en la función httpGet, este bloque captura la excepción
    print('Tenemos un error: $err'); // Imprime el mensaje de error capturado
  }
  
  // Imprime 'Fin del programa' en la consola
  // Se ejecuta después de que la petición asíncrona haya terminado (o haya lanzado un error)
  print('Fin del programa');
}


// Definición de la función httpGet que simula una petición HTTP
Future<String> httpGet( String url ) async {
  
  // Espera 1 segundo antes de continuar, simulando el tiempo de espera de una petición HTTP
  await Future.delayed( const Duration(seconds: 1));
  
  // Después de esperar, lanza un error simulando una falla en la petición HTTP
  throw 'Error en la petición';
  
  // Si no hubiera un error, aquí retornaría la respuesta exitosa de la petición
  // return 'Tenemos un valor de la petición';
}
