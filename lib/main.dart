import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
// import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // Cuando no encuentra la ruta entra la condición onGenerateRoute
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
