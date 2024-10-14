void main() async {
  
  // Imprime 'Inicio del programa' en la consola
  print('Inicio del programa');
  
  // Inicia un bloque try-catch-finally para manejar posibles errores en la llamada asíncrona
  try {
    
    // Llama a la función asíncrona httpGet usando await.
    // La ejecución se detiene aquí hasta que httpGet retorne un valor o arroje una excepción.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si no hay errores, se imprime el resultado exitoso
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    // Este bloque captura específicamente excepciones del tipo Exception
    print('Tenemos una Exception: $err'); // Imprime el mensaje de la excepción
    
  } catch (err) {
    // Este bloque captura cualquier otro tipo de error que no sea una Exception
    print('OOP!! algo terrible pasó: $err'); // Imprime el mensaje del error general
    
  } finally {
    // Este bloque se ejecuta siempre, haya habido un error o no
    print('Fin del try y catch'); // Marca el final del manejo de errores
  }
  
  // Este mensaje se imprime después de que toda la lógica del try-catch-finally haya sido ejecutada
  print('Fin del programa');
}


// Definición de la función asíncrona httpGet
Future<String> httpGet( String url ) async {
  
  // Simula una espera de 1 segundo (como si fuera el tiempo de respuesta de una petición HTTP)
  await Future.delayed( const Duration(seconds: 1));
  
  // Lanza una excepción específica del tipo Exception, simulando un problema en la solicitud HTTP
  throw Exception('No hay parámetros en el URL');
  
  // Si no hubiera error, este código podría devolver el valor de la petición exitosa (comentado)
  // return 'Tenemos un valor de la petición';
}
