import 'package:flutter/material.dart';

class VerOrdenesPendientesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ordenes Pendientes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ordenes Pendientes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
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
