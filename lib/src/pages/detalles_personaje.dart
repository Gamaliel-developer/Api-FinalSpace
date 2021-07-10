import 'package:flutter/material.dart';
import 'package:finalspace/src/models/personaje_model.dart';

class DetallePersonajePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PersonajeModel _personaje = ModalRoute.of(context)!.settings.arguments as PersonajeModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[900],
        title: Text(_personaje.name!,),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          _ImgPersonaje(_personaje),
          _DatosPersonaje(_personaje)
        ],
      )
    );
  }
}

class _DatosPersonaje extends StatelessWidget {
  final PersonajeModel personaje;
  _DatosPersonaje(this.personaje);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      elevation: 15.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Positioned(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Origin:", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold,fontSize: 25.0)),
              Text(personaje.origin!, style: TextStyle(color: Colors.black, fontSize: 20.0)),
              SizedBox(height: 10.0,),
              Text("Species:", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold,fontSize: 25.0)),
              Text(personaje.species!, style: TextStyle(color: Colors.black, fontSize: 20.0)),
              SizedBox(height: 10.0,),
              Text("Gender:", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold,fontSize: 25.0)),
              Text(personaje.gender!, style: TextStyle(color: Colors.black, fontSize: 20.0)),
              SizedBox(height: 10.0,),
              Text("Hair:", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold,fontSize: 25.0)),
              Text(personaje.hair!, style: TextStyle(color: Colors.black, fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ImgPersonaje extends StatelessWidget {
  final PersonajeModel personaje;
  _ImgPersonaje(this.personaje);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(width: 10.0,),
          CircleAvatar(
            backgroundImage: NetworkImage(
              personaje.imgurl!,
            ),
            radius: 80,
          ),
          Card(
            
            margin: EdgeInsets.symmetric(vertical: 15.0),
            elevation: 15.0,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Stack(
                children: [
                  Text(personaje.status!, style: TextStyle(fontSize: 20.0))
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}
