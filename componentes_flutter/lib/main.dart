//import 'package:componentes_flutter/src/pages/home_temp.dart';

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() { 
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES')
      ],
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