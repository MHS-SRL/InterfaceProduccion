import 'package:flutter/material.dart';
import 'drawer_items.dart';

class VerOrdenesPendientesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ordenes Pendientes'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: DrawerItems.getDrawerItems(
              context), // Usa la función estática de DrawerItems
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ordenes Pendientes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columns: const <DataColumn>[
                      DataColumn(label: Text('Numero Orden')),
                      DataColumn(label: Text('Cliente')),
                      DataColumn(label: Text('Area')),
                      DataColumn(label: Text('Prioridad')),
                      DataColumn(label: Text('Fecha Orden')),
                      DataColumn(label: Text('Fecha Entrega')),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('ORD25266')),
                          DataCell(Text('La Aurora')),
                          DataCell(Text('PMP')),
                          DataCell(Text('Urgente')),
                          DataCell(Text('22/02/2024')),
                          DataCell(Text('23/02/2024')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('ORD25266')),
                          DataCell(Text('La Aurora')),
                          DataCell(Text('PMP')),
                          DataCell(Text('Urgente')),
                          DataCell(Text('22/02/2024')),
                          DataCell(Text('23/02/2024')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('ORD25266')),
                          DataCell(Text('La Aurora')),
                          DataCell(Text('PMP')),
                          DataCell(Text('Urgente')),
                          DataCell(Text('22/02/2024')),
                          DataCell(Text('23/02/2024')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('ORD25266')),
                          DataCell(Text('La Aurora')),
                          DataCell(Text('PMP')),
                          DataCell(Text('Urgente')),
                          DataCell(Text('22/02/2024')),
                          DataCell(Text('23/02/2024')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('ORD25266')),
                          DataCell(Text('La Aurora')),
                          DataCell(Text('PMP')),
                          DataCell(Text('Urgente')),
                          DataCell(Text('22/02/2024')),
                          DataCell(Text('23/02/2024')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('ORD25266')),
                          DataCell(Text('La Aurora')),
                          DataCell(Text('PMP')),
                          DataCell(Text('Urgente')),
                          DataCell(Text('22/02/2024')),
                          DataCell(Text('23/02/2024')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VerOrdenesPendientesScreen(),
  ));
}
