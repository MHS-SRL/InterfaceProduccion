import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 250, // Ancho del menú
            color: Colors.grey[200], // Color de fondo del menú
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Crear Órdenes'),
                  onTap: () {
                    Navigator.pushNamed(context, 'crear_ordenes');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder_open),
                  title: Text('Órdenes Pendientes'),
                  onTap: () {
                    Navigator.pushNamed(context, 'ordenes_pendientes');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Seguimiento de Órdenes'),
                  onTap: () {
                    Navigator.pushNamed(context, 'seguimiento_ordenes');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.analytics),
                  title: Text('Análisis de Productividad'),
                  onTap: () {
                    Navigator.pushNamed(context, 'analisis_productividad');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.build),
                  title: Text('Registro de Herramienta Rota'),
                  onTap: () {
                    Navigator.pushNamed(context, 'registro_herramienta_rota');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.error),
                  title: Text('Registro de Error de Máquina'),
                  onTap: () {
                    Navigator.pushNamed(context, 'registro_error_maquina');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Salida de Órdenes Lista'),
                  onTap: () {
                    Navigator.pushNamed(context, 'salida_ordenes_lista');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.night_shelter),
                  title: Text('Reportes Nocturnos'),
                  onTap: () {
                    Navigator.pushNamed(context, 'reportes_nocturnos');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Cerrar Sesión'),
                  onTap: () {
                    Navigator.pushNamed(context, 'cerrar_sesion');
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Bienvenido a la página principal'),
            ),
          ),
        ],
      ),
    );
  }
}
