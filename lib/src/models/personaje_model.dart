class PersonajeModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  String? hair;
  String? origin;
  String? imgurl;

  PersonajeModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.gender,
    this.hair,
    this.origin,
    this.imgurl
  });

  factory PersonajeModel.fromMapJson(Map<String, dynamic> data) => PersonajeModel(
        id: data['id'],
        name: data['name'],
        status: data['status'],
        species: data['species'],
        gender: data['gender'],
        hair: data['hair'],
        origin: data['origin'],
        imgurl: data['img_url'],
      );
}


