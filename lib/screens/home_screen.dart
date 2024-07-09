import 'package:flutter/material.dart';
import 'drawer_items.dart'; // Importa el archivo que contiene DrawerItems
import '/widgets/pie_chart.dart';
import '/widgets/pie_leyenda.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 250, // Ancho del menú
            color: Color(0xFFD2B48C), // Color de fondo del menú
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: DrawerItems.getDrawerItems(
                  context), // Usa la función estática
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10), // Espacio superior
                const Text(
                  'Resumen de Trabajo:',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD2B48C),
                  ),
                ),
                const SizedBox(
                    height:
                        45), // Espacio entre el título y el gráfico de pastel
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight /
                            1.5, // Ajusta la altura del gráfico de pastel
                        child: const CustomPieChart(),
                      );
                    },
                  ),
                ),
                const SizedBox(
                    height:
                        20), // Espacio entre el gráfico de pastel y la leyenda
                const CustomLegend(), // Widget de la leyenda
                const SizedBox(height: 20), // Espacio inferior
              ],
            ),
          ),
        ],
      ),
    );
  }
}
