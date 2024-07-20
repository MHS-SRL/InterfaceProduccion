import 'package:flutter/material.dart';
import 'drawer_items.dart'; // Importa el archivo que contiene DrawerItems
import '/screens/orden_creada_screen.dart';
import '/screens/home_screen.dart';

class CrearOrdenesScreen extends StatelessWidget {
  const CrearOrdenesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Ordenes'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: DrawerItems.getDrawerItems(
              context), // Usa la función estática de DrawerItems
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Cliente: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'La Aurora',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Tipo: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Estándar',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Estado: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Planif',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Producto: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'EARTH STRIP, EMC',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'No. Prod: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '000011447',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Almacen: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'ITM',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'No. Orden: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '1',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Cantidad: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '1',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Prioridad: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '100',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'COMPONENTES',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Table(
                border: TableBorder.all(color: const Color(0xFFB08562)),
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      Container(
                        color: const Color(0xFFD8B48C),
                        padding: const EdgeInsets.all(8.0),
                        child: const Center(
                          child: Text(
                            'ITEM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color(0xFFE6D3B1),
                        padding: const EdgeInsets.all(8.0),
                        child: const Center(
                          child: Text(
                            'CANTIDAD',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color(0xFFD8B48C),
                        padding: const EdgeInsets.all(8.0),
                        child: const Center(
                          child: Text(
                            'DETALLES',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _buildTableRow('Rodamiento', '25.00', 'Rodamiento 4262'),
                  _buildTableRow('Rodamiento', '25.00', 'Rodamiento 6003'),
                  _buildTableRow('Rodamiento', '25.00', 'Rodamiento 6002'),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: const Color(0xFFD8B48C),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'NOTA:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFFD8B48C),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'TOTAL ITEMS',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFFD8B48C),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        '75.00',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.save, size: 50),
                        onPressed: () {
                          // Lógica para guardar
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OrdenCreadaScreen()),
                          );
                        },
                      ),
                      const Text('Guardar'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.cancel, size: 50),
                        onPressed: () {
                          // Lógica para cancelar
                          Navigator.pop(context);

                          // Cambiar la lógica aquí
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                            (route) => false,
                          );
                          print('Cancelar');
                        },
                      ),
                      const Text('Cancelar'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  '2024 © Todos los derechos reservados Mercado High Services Srl',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(String item, String cantidad, String detalles) {
    return TableRow(
      children: [
        Container(
          color: const Color(0xFFF7EAD7),
          padding: const EdgeInsets.all(8.0),
          child: Text(item, textAlign: TextAlign.center),
        ),
        Container(
          color: const Color(0xFFF7EAD7),
          padding: const EdgeInsets.all(8.0),
          child: Text(cantidad, textAlign: TextAlign.center),
        ),
        Container(
          color: const Color(0xFFF7EAD7),
          padding: const EdgeInsets.all(8.0),
          child: Text(detalles, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
