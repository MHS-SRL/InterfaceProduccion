import 'package:flutter/material.dart';

class CerrarSesionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cerrar Sesion'),
      ),
      body: const Center(
        child: Text('Pantalla para Cerrar Sesion'),
      ),
    );
  }
}
