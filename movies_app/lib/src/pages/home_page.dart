import 'package:flutter/material.dart';
import 'package:movies_app/src/models/pelicula_model.dart';
import 'package:movies_app/src/providers/peliculas_provider.dart';

import 'package:movies_app/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  final peliculasProvider = new PeliculasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Peliculas en cines'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){}
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swiperTarjetas()
          ],
        ),
      ), 
      /*SafeArea(
        child: Text('Hola mundo.......')
        )*/
    );
  }

  Widget _swiperTarjetas() {
    
    return FutureBuilder(
      future: peliculasProvider.getEnCines(),
      builder: (BuildContext context, AsyncSnapshot<List<Pelicula>> snapshot) {
        if(snapshot.hasData){
          return CardSwiper(peliculas: snapshot.data??[]);
        } else {
          return Container(
            height: 400.0,
            child: const Center(
              child: CircularProgressIndicator()
            )
          );
        }
      },
    );
  }
}