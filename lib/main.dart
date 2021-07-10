import 'package:finalspace/src/pages/detalles_personaje.dart';
import 'package:finalspace/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'Final Space',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/detalles': (_) => DetallePersonajePage()
      },
    );
  }
}
