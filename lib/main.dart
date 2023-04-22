import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Color color = Theme
        .of(context)
        .primaryColor;
    const primaryColor = Color(0xFF151026);


    return MaterialApp(
      title: 'Catálogo de películas',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Catálogo de películas'),
            backgroundColor: primaryColor,
          ),
          body: new Stack(
            children: [
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("images/fondo.jpg"),
                    fit: BoxFit.cover,),
                ),
              ),
              new Center(
                child: new Text(
                    "Bienvenidos al catálogo más grande de películas"),
              )
            ],
          )
      ),
    );
  }
}