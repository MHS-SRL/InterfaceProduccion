import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        // Aquí puedes colocar cualquier widget que desees como cuerpo de la pantalla
        child: Center(
          child: Text('Contenido de la pantalla de inicio'),
        ),
      ),
    );
  }
}