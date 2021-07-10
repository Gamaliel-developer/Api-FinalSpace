import 'package:finalspace/src/providers/personajes_provider.dart';
import 'package:finalspace/src/models/personaje_model.dart';
import 'package:get/get.dart';


class PersonajeState extends GetxController {
  List<PersonajeModel> personajes = [];
  final personajesProvider = PersonajesProvider();

  Future<void> obtenerPersonajes() async {
    personajes.addAll(await personajesProvider.obtenerPersonajes());
    update();
  }
}