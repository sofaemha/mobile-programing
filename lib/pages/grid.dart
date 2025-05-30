import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  int _col = 0;
  int _row = 0;

  void _dynamicIndexCounter(int index, int count) {
    if (index % 3 == 0) {
      _col = 0;
      _row = (_row > 3) ? 1 : _row + 1;
    }

    setState(() {
      _col++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View")),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(9, (index) {
          _dynamicIndexCounter(index, _col);
          return Center(child: Text("Baris $_row, Kolom $_col"));
        }),
      ),
    );
  }
}
