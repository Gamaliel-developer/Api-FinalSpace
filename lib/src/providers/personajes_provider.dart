import 'package:dio/dio.dart';
import 'package:finalspace/src/models/personaje_model.dart';


class PersonajesProvider {
  final _url = 'https://finalspaceapi.com/api/v0/character';
  final _http = Dio();

  Future<List<PersonajeModel>> obtenerPersonajes() async {
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data;

    return _data.map((_personajes) => PersonajeModel.fromMapJson(_personajes)).toList();
  }
}