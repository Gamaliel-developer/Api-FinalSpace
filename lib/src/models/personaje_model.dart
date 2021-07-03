class PersonajeModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  String? hair;
  List<String>? alias;
  String? origin;
  List<String>? abilities;
  String? imgurl;

  PersonajeModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.gender,
    this.hair,
    this.alias,
    this.origin,
    this.abilities,
    this.imgurl
  });

  factory PersonajeModel.fromMapJson(Map<String, dynamic> data) => PersonajeModel(
        id: data['id'],
        name: data['name'],
        status: data['status'],
        species: data['species'],
        gender: data['gender'],
        hair: data['hair'],
        alias: data['alias'],
        origin: data['origin'],
        abilities: data['abilities'],
        imgurl: data['img_url'],
      );
}



