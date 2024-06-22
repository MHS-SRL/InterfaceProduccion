import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/crear_ordenes_screen.dart';
import 'screens/ver_ordenes_pendientes_screen.dart';
import 'screens/seguimiento_orden_screen.dart';
import 'screens/analisis_productividad_screen.dart';
import 'screens/registro_herramienta_rota_screen.dart';
import 'screens/registro_error_maquina_screen.dart';
import 'screens/salida_ordenes_lista_screen.dart';
import 'screens/reportes_nocturnos_screen.dart';
import 'screens/cerrar_sesion_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_) => HomeScreen(),
        'crear_ordenes': (_) => CrearOrdenesScreen(),
        'ver_ordenes_pendientes': (_) => VerOrdenesPendientesScreen(),
        'seguimiento_orden': (_) => SeguimientoDeOrdenScreen(),
        'analisis_productividad': (_) => AnalisisDeProductividadScreen(),
        'registro_herramienta_rota': (_) => RegistroHerramientaRotaScreen(),
        'registro_error_maquina': (_) => RegistroErrorMaquinaScreen(),
        'salida_ordenes_lista': (_) => SalidaOrdenesListaScreen(),
        'reportes_nocturnos': (_) => ReportesNocturnosScreen(),
        'cerrar_sesion': (_) => CerrarSesionScreen(),
      },
      initialRoute: 'login',
    );
  }
}
