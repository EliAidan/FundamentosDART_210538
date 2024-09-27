void main() {
  //Repaso de clases en DART

  //Instanciamos la clase heroe
  print("Heroe 1: --------------------------------------------------");
  final wolverine = Hero("Logan", "Regeneracion");
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  print("Heroe 2: --------------------------------------------------");
  final scarletWitch = Hero("Magia del caos", "Wanda");
  print(scarletWitch);
  print(scarletWitch.name);
  print(scarletWitch.power);

  final xmen = Team(type:"Heroes", name:"X-Men");
  print(xmen);
  print(xmen.name);
  print(xmen.type);

  final justiceLeague = Team(name:"La liga de la justicia");
  print(justiceLeague);
  print(justiceLeague.name);
  print(justiceLeague.type);

  print(justiceLeague.toString());

  /*Intentamos instanciar la clase sobre el valor tipo, que no lo permite por que la propiedad es requerida*/
  /*final hydra = Team(type:"Villanos"*/
}


//Clase con propiedades posicionales
class Hero {
  String name;
  String power;

  Hero(String pName, String pPower):
    name = pName,
    power = pPower;
}
  //Clase con propiedades no posicionales nombradas
  class Team
  {
    String name;
    String type;
    // El constructor de la clase siempre debe de llevar el mismo nombre de la misma.
    Team({required this.name, this.type="No definido"});

    @override
    String toString(){
      return 'Grupo: $name, Tipo.$type';
    }
  }