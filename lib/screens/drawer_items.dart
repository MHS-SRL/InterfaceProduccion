import 'package:flutter/material.dart';

class DrawerItems {
  static List<Widget> getDrawerItems(BuildContext context) {
    return [
      Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
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
                leading: const Icon(Icons.create),
                title: const Text('Crear Órdenes'),
                onTap: () {
                  Navigator.pushNamed(context, 'crear_ordenes');
                },
              ),
              ListTile(
                leading: const Icon(Icons.pending),
                title: const Text('Ver Órdenes Pendientes'),
                onTap: () {
                  Navigator.pushNamed(context, 'ver_ordenes_pendientes');
                },
              ),
              ListTile(
                leading: const Icon(Icons.track_changes),
                title: const Text('Seguimiento Orden'),
                onTap: () {
                  Navigator.pushNamed(context, 'seguimiento_orden');
                },
              ),
              ListTile(
                leading: const Icon(Icons.analytics),
                title: const Text('Análisis de Productividad'),
                onTap: () {
                  Navigator.pushNamed(context, 'analisis_productividad');
                },
              ),
              ListTile(
                leading: const Icon(Icons.build),
                title: const Text('Registro Herramienta Rota'),
                onTap: () {
                  Navigator.pushNamed(context, 'registro_herramienta_rota');
                },
              ),
              ListTile(
                leading: const Icon(Icons.error),
                title: const Text('Registro Error Máquina'),
                onTap: () {
                  Navigator.pushNamed(context, 'registro_error_maquina');
                },
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: const Text('Salida Órdenes Lista'),
                onTap: () {
                  Navigator.pushNamed(context, 'salida_ordenes_lista');
                },
              ),
              ListTile(
                leading: const Icon(Icons.nightlight_round),
                title:const Text('Reportes Nocturnos'),
                onTap: () {
                  Navigator.pushNamed(context, 'reportes_nocturnos');
                },
              ),
              ListTile(
                leading:const Icon(Icons.exit_to_app),
                title:const Text('Cerrar Sesión'),
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
