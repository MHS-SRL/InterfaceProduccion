import 'package:flutter/material.dart';
import 'drawer_items.dart'; // Importa el nuevo archivo creado

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children:
            DrawerItems.getDrawerItems(context), // Usa la función estática
      ),
    );
  }
}
