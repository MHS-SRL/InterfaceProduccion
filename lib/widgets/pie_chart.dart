import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: Colors.blue,
            value: 40,
            title: '',
            titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
            showTitle: true,
          ),
          PieChartSectionData(
            color: Colors.yellow,
            value: 30,
            title: '',
            titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
            showTitle: true,
          ),
          PieChartSectionData(
            color: Colors.green,
            value: 20,
            title: '',
            titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
            showTitle: true,
          ),
          PieChartSectionData(
            color: Colors.lime,
            value: 10,
            title: '',
            titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
            showTitle: true,
          ),
        ],
        sectionsSpace: 3,
        centerSpaceRadius: 80, // Reducir el tamaño del pie
      ),
    );
  }
}
