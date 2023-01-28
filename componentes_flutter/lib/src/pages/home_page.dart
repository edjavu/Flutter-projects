import 'package:componentes_flutter/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list(){
    print(menuProvider.opciones);
    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(title: Text('Hola mundo')),
      Divider(),
      ListTile(title: Text('Hola mundo')),
      Divider(),
      ListTile(title: Text('Hola mundo'))
    ];
  }

}

