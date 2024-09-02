import 'package:flutter/material.dart';
import 'drawer_items.dart'; 
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
          children: DrawerItems.getDrawerItems(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sección de cliente, tipo y estado
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
              // Componente
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
                  _buildTableRow('Rodamiento', '25.00', 'Rodamiento 6002', isHighlighted: true), // Marca el cuarto elemento
                ],
              ),
              const SizedBox(height: 20),
              // Total de Cantidad
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Items:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '75.00',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Sección de Notas
              Container(
                color: const Color(0xFFF7EAD7),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'NOTA:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Escribe una nota...',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Botones de Cancelar y Guardar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                        (route) => false,
                      );
                      print('Cancelar');
                    },
                    icon: const Icon(Icons.save), // Icono de guardar
                    label: const Text('Guardar'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white, // Color del texto negro
                      side: const BorderSide(color: Colors.black), // Borde negro
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre botones
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                        (route) => false,
                      );
                      print('Cancelar');
                    },
                    icon: const Icon(Icons.cancel), // Icono de cancelar
                    label: const Text('Cancelar'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.black, // Color del texto blanco
                    ),
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

  TableRow _buildTableRow(String item, String cantidad, String detalles, {bool isHighlighted = false}) {
    return TableRow(
      children: [
        Container(
          color: isHighlighted ? Colors.white : const Color(0xFFD8B48C), // Fondo blanco solo para el cuarto rodamiento
          padding: const EdgeInsets.all(8.0),
          child: Text(item),
        ),
        Container(
          color: const Color(0xFFE6D3B1), // Color de la columna 'CANTIDAD'
          padding: const EdgeInsets.all(8.0),
          child: Text(cantidad),
        ),
        Container(
          color: const Color(0xFFD8B48C), // Color de la columna 'DETALLES'
          padding: const EdgeInsets.all(8.0),
          child: Text(detalles),
        ),
      ],
    );
  }
}
