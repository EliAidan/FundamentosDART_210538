void main() {
  
  // Llama a la función emitNumber que retorna un Stream asíncrono (async*) y escucha sus valores emitidos.
  // Cada vez que el Stream emite un valor, el callback en listen se ejecuta e imprime el valor.
  emitNumber()
     .listen( (int value) {
        
       print( 'Stream value: $value' ); // Imprime cada valor emitido por el Stream
       
     }); 
}


// Función que retorna un Stream asíncrono de enteros
Stream<int> emitNumber() async* {
  
  // Lista de valores que se van a emitir uno por uno
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  // Itera sobre la lista de valores a emitir
  for( int i in valuesToEmit ) {
    // Espera 1 segundo antes de emitir cada valor, simulando una operación asíncrona
    await Future.delayed( const Duration(seconds: 1));
    // Emite el valor actual del iterador (i) al Stream
    yield i;
  }
  
}
