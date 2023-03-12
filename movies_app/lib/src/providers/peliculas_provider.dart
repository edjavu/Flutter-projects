import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:movies_app/src/models/pelicula_model.dart';

class PeliculasProvider {

  String _apikey = '0dd952d720ceabe567d57ab74faabf9a';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async{

    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _language
    });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    // print(peliculas.items[2].title);
    return peliculas.items;

  }

}