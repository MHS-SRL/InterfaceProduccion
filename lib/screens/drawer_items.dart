import 'package:flutter/material.dart';

class DrawerItems {
  static List<Widget> getDrawerItems(BuildContext context) {
    return [
      Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.create),
                title: Text('Crear Órdenes'),
                onTap: () {
                  Navigator.pushNamed(context, 'crear_ordenes');
                },
              ),
              ListTile(
                leading: Icon(Icons.pending),
                title: Text('Ver Órdenes Pendientes'),
                onTap: () {
                  Navigator.pushNamed(context, 'ver_ordenes_pendientes');
                },
              ),
              ListTile(
                leading: Icon(Icons.track_changes),
                title: Text('Seguimiento Orden'),
                onTap: () {
                  Navigator.pushNamed(context, 'seguimiento_orden');
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
                title: Text('Registro Herramienta Rota'),
                onTap: () {
                  Navigator.pushNamed(context, 'registro_herramienta_rota');
                },
              ),
              ListTile(
                leading: Icon(Icons.error),
                title: Text('Registro Error Máquina'),
                onTap: () {
                  Navigator.pushNamed(context, 'registro_error_maquina');
                },
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Salida Órdenes Lista'),
                onTap: () {
                  Navigator.pushNamed(context, 'salida_ordenes_lista');
                },
              ),
              ListTile(
                leading: Icon(Icons.nightlight_round),
                title: Text('Reportes Nocturnos'),
                onTap: () {
                  Navigator.pushNamed(context, 'reportes_nocturnos');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Cerrar Sesión'),
                onTap: () {
                  Navigator.pushNamed(context, 'cerrar_sesion');
                },
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
