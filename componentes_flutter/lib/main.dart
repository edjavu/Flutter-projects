//import 'package:componentes_flutter/src/pages/home_temp.dart';
import 'package:componentes_flutter/src/pages/card_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/routes/routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // onGenerateRoute: (RouteSettings settings){
      //   print('Llamada a ${settings.name}');
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => CardPage();
      //   );
      // },
    );
  }
}