void main() {
  
  // Llama a la función emitNumbers que retorna un Stream y escucha sus valores emitidos.
  // Cada vez que el Stream emite un valor, el callback en listen se ejecuta e imprime el valor.
  emitNumbers().listen( (value) {
     print('Stream value: $value'); // Imprime cada valor emitido por el Stream
  });
  
} 


// Función que retorna un Stream de enteros
Stream<int> emitNumbers() {
  
  // Crea un Stream que emite valores periódicamente (cada 1 segundo).
  return Stream.periodic( const Duration(seconds: 1), (value){
    // La función pasada como parámetro a Stream.periodic recibe un contador (value) que comienza en 0 y aumenta con cada emisión.
    return value; // Retorna el valor actual del contador
  }).take(5); // .take(5) limita el número de emisiones a 5. Después de 5 emisiones, el Stream se cierra.
  
}
