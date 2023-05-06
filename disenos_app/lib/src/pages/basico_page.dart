import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  //const BasicoPage({super.key});

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto()
          ],
        )
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
          width: double.infinity,
          child: const Image(
                    image: NetworkImage('https://gepphotoclub.com/wp-content/uploads/2021/07/2021-07-25_Ed-Featured.jpg'),
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
        );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Lago congelado', style: estiloTitulo),
                        const SizedBox(height: 7.0),
                        Text('Lago en Suecia', style: estiloSubtitulo)
                      ],
                    ),
                  ),
                  const Icon(Icons.star, color: Colors.red, size: 30.0),
                  const Text('41', style: TextStyle(fontSize: 20.0))
                ],
              ),
            ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ]
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 30.0),
            SizedBox(height: 5.0),
            Text(texto, style: const TextStyle(fontSize: 10.0, color: Colors.blue))
          ],
        );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: const Text('Tsjkdnjsnfkjsnfjnsjnsjdknsjdnjsdnjsndjnsdsdkjdbjsdbkjsbdsbdjbsjdbsjdbjskbdkjsbdkjbskjdbsjkdbjksbdsjdbkjsdbjksbdjsbdkjsdbkjsdbkjdsbjdskbjdksbdjkbdsjbjsd',
                          textAlign: TextAlign.justify)
      ),
    );
  }
}