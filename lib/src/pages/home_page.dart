import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
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
        Menu()
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, size: 90.0,)
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.blueAccent[900],
        title: Text('Final Space'),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}