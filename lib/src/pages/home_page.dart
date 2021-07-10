import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finalspace/src/providers/personajes_state.dart';

class HomePage extends StatefulWidget{
  
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  bool _cargando = false;
  @override
  void initState() {
    final personajeState = Get.put(PersonajeState());
    personajeState.obtenerPersonajes();

    _scrollController.addListener(() async {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 300) {
        if (_cargando == false) {
          setState(() {
            _cargando = true;
          });
          await personajeState.obtenerPersonajes();
          setState(() {
            _cargando = false;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children:[   
        _pagina1(),
        _pagina2()
      ],
      ) 
    );
  }

  Widget _pagina1(){
    return Stack(
     children: [
      _imgFondo(),
      _contenido()
      ],
    );
  }

  Widget _pagina2(){
    return Stack(
      children: [
        _Menu(_scrollController),
        
      ],
    );
  }

  Widget _imgFondo(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
      'assets/FinalSpace.jpg', 
      fit: BoxFit.cover,
      ),
    );
  }

  Widget _contenido(){
    return Container(
      padding: EdgeInsets.only(top: 100.00),
      child: Center(
        child: Column(
          children: [
            Expanded(child: Container()),
            Card(
              elevation: 100.0,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Icon(Icons.expand_more_sharp, color: Colors.white, size: 60.0,)
                  ],
                ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  final ScrollController _scrollController;
  _Menu(this._scrollController);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonajeState>(builder: (PersonajeState personajeState) {
      return Scaffold(appBar: AppBar(
        backgroundColor: Colors.blueAccent[900],
        title: Text('Final Space'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 47,
        itemBuilder: (BuildContext context, int i){
          final _personajes = personajeState.personajes[i];
          return Card(
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, '/detalles', arguments: _personajes),
              leading: Image.network(_personajes.imgurl!),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              title: Text(_personajes.name!),
            ),
          );
        },
      ),
    );
    });
  }
}

