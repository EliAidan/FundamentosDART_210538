void main() {
  // Caso de Prueba 1: Creación de un paciente llamado Elí Aidan
  final eliAidan = Paciente(
    id: 1,
    nombre: "Elí Aidan",
    primerApellido: "Melo",
    segundoApellido: "Calva",
    genero: "Masculino",
    grupoSanguineo: "A+",
    curp: "MECE030930HPLLLLA0",
    fechaNacimiento: DateTime(2003, 09, 30),
    estadoVida: "Vivo",
    estadoMedico: "Estable",
    nss: "0220036545",
    tipoSeguro: "IMSS",
    fechaUltimaCita: DateTime.now(),
  );

  // Imprimir los datos de Carlos Martin
  print(eliAidan);

  // Caso de Prueba 2: Creación de un paciente llamado Ana Gonzalez
  final anaGonzalez = Paciente(
    id: 2,
    nombre: "Ana",
    primerApellido: "Gonzalez",
    segundoApellido: "Ramirez",
    genero: "Femenino",
    grupoSanguineo: "B+",
    curp: "AGR123456789DF",
    fechaNacimiento: DateTime(1995, 5, 15),
    estadoVida: "Vivo",
    estadoMedico: "Saludable",
    nss: "1234567890",
    tipoSeguro: "PEMEX",
    fechaUltimaCita: DateTime.now(),
    fechaRegistro: DateTime.now().subtract(Duration(days: 30)), // Fecha de registro hace 30 días
  );

  // Imprimir los datos de Martha Flores
  print(anaGonzalez);

  // Caso de Prueba 3: Creación de un paciente llamado Carlos Martinez
  final carlosMartinez = Paciente(
    id: 3,
    nombre: "Carlos",
    primerApellido: "Martinez",
    segundoApellido: "Hernandez",
    genero: "Masculino",
    grupoSanguineo: "B-",
    curp: "CMH19850101HDFNRR01",
    fechaNacimiento: DateTime(1985, 1, 1),
    estadoVida: "Vivo",
    estadoMedico: "Estable",
    nss: "9876543210",
    tipoSeguro: "ISSSTE",
    fechaUltimaCita: DateTime.now(),
    fechaRegistro: DateTime.now().subtract(Duration(days: 90)), // Fecha de registro hace 90 días
);

  // Imprimir los datos de Carlos antes de su fallecimiento
  print("""
      -----------------------------------
      DATOS ANTES DEL FALLECIMIENTO
      -----------------------------------""");
  print(carlosMartinez);
  
  // Actualizar el estado de Carlos a inactivo debido al fallecimiento
  carlosMartinez.registrarDefuncion(motivo: "Infarto", hora: DateTime.now());
  
  // Imprimir los datos de Carlos después de su fallecimiento
  print("""
      -----------------------------------
      DATOS DESPUES DEL FALLECIMIENTO
      -----------------------------------""");
  print(carlosMartinez);
  }
  
  // Definición de la Clase Abstracta <Persona>
  abstract class Persona {
  int id; // Identificador único
  String nombre; // Nombre
  String primerApellido; // Primer apellido
  String? segundoApellido; // Segundo apellido (opcional)
  String genero; // Género
  String grupoSanguineo; // Grupo sanguíneo
  String? curp; // CURP (opcional)
  DateTime fechaNacimiento; // Fecha de nacimiento
  bool estaActivo; // Estado de actividad (activo/inactivo)
  DateTime fechaRegistro; // Fecha de registro
  DateTime? fechaActualizacion; // Fecha de actualización (opcional)
  
  // Constructor de la clase Persona
  Persona({
    required this.id,
    required this.nombre,
    required this.primerApellido,
    this.segundoApellido,
    required this.genero,
    required this.grupoSanguineo,
    this.curp,
    required this.fechaNacimiento,
    this.estaActivo = true, // Por defecto, activo
    DateTime? fechaRegistro,
    this.fechaActualizacion,
  }) : fechaRegistro = fechaRegistro ?? DateTime.now(); // Si no se proporciona, se usa la fecha actual
  
  // Representación en forma de cadena
  @override
  String toString() {
    // Formatear fecha de nacimiento
    String formatoFechaNacimiento = "${fechaNacimiento.day.toString().padLeft(2, '0')}/" +
        "${fechaNacimiento.month.toString().padLeft(2, '0')}/${fechaNacimiento.year}";
  
    // Formatear fecha de registro
    String formatoFechaRegistro = "${fechaRegistro.day.toString().padLeft(2, '0')}/" +
        "${fechaRegistro.month.toString().padLeft(2, '0')}/${fechaRegistro.year} " +
        "${fechaRegistro.hour.toString().padLeft(2, '0')}:" +
        "${fechaRegistro.minute.toString().padLeft(2, '0')}:" +
        "${fechaRegistro.second.toString().padLeft(2, '0')}";
  
    curp ??= "No registrado"; // Si no hay CURP, asigna un valor por defecto
    // Determinar el estado (activo o inactivo)
    String estadoString = estaActivo ? "Activo" : "Inactivo";
  
    // Retornar la representación en forma de cadena
    return """
      -----------------------------------
      DATOS DE LA PERSONA
      -----------------------------------
      ID: $id,
      Nombre: $nombre $primerApellido ${segundoApellido ?? ""}
      Género: $genero
      Grupo sanguíneo: $grupoSanguineo
      Fecha de nacimiento: $formatoFechaNacimiento
      CURP: $curp
      Estatus: $estadoString
      Fecha de registro: $formatoFechaRegistro
      -----------------------------------
      """;
  }
  }
  
  // Clase Paciente que extiende de Persona
  class Paciente extends Persona {
  String nss; // Número de Seguridad Social
  String tipoSeguro; // Tipo de seguro
  String estadoVida; // Estado de vida (Vivo o Finado)
  String estadoMedico; // Estado médico del paciente
  DateTime fechaUltimaCita; // Fecha de la última cita
  
  // Atributos relacionados a defunción
  DateTime? horaDefuncion; // Hora de defunción (opcional)
  String? motivoDefuncion; // Motivo de defunción (opcional)
  
  // Constructor de la clase Paciente
  Paciente({
    required int id,
    required String nombre,
    required String primerApellido,
    String? segundoApellido,
    required String genero,
    required String grupoSanguineo,
    String? curp,
    required DateTime fechaNacimiento,
    bool estaActivo = true,
    DateTime? fechaRegistro,
    DateTime? fechaActualizacion,
    required this.nss,
    required this.tipoSeguro,
    required this.estadoVida,
    required this.estadoMedico,
    required this.fechaUltimaCita,
  }) : super(
          id: id,
          nombre: nombre,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          genero: genero,
          grupoSanguineo: grupoSanguineo,
          curp: curp,
          fechaNacimiento: fechaNacimiento,
          estaActivo: estaActivo,
          fechaRegistro: fechaRegistro,
          fechaActualizacion: fechaActualizacion,
        );
  
  // Método para registrar la defunción
  void registrarDefuncion({required String motivo, required DateTime hora}) {
    // Verificar si el paciente ya está marcado como Finado
    if (estadoVida.toLowerCase() == 'finado') {
      print("Error: El paciente ya está registrado como Finado.");
      return;
    }
  
    // Actualización del estado del paciente a Finado
    estadoVida = 'Finado';
    estaActivo = false; // Cambia el estado a inactivo
    estadoMedico = 'Muerto'; // Cambia el estado médico a 'Muerto'
    horaDefuncion = hora; // Registra la hora de defunción
    motivoDefuncion = motivo; // Registra el motivo de defunción
    fechaActualizacion = DateTime.now(); // Registra la nueva fecha de actualización
  }
  
  // Sobreescritura del método toString() para incluir detalles del paciente
  @override
  String toString() {
    String resultado = super.toString() + // Llama a la representación de la clase base
        """
  NSS: $nss
      Tipo de seguro: $tipoSeguro
      Estatus de vida: $estadoVida
      Estado médico: $estadoMedico
      Fecha de la última cita: ${fechaUltimaCita.day}/${fechaUltimaCita.month}/${fechaUltimaCita.year}
      """;
  
    // Detalles de la defunción si aplica
    if (estadoVida == 'Finado') {
      resultado += """
      Motivo de defunción: ${motivoDefuncion ?? "No especificado"}
      Hora de defunción: ${horaDefuncion != null ? "${horaDefuncion!.hour}:${horaDefuncion!.minute}" : "No especificada"}
      """;
    }
  
    resultado += "-----------------------------------\n";
    return resultado; // Retorna la cadena resultante
  }
}