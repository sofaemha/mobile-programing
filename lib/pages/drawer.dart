import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'column.dart';
import 'grid.dart';
// import 'list.dart';
import 'row.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.10, sigmaY: 0.10),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Mobile Programming",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              TextButton(
                onPressed: () {
                  Get.to(RowPage());
                },
                child: Text("Row View"),
              ),
              TextButton(
                onPressed: () {
                  Get.to(ColumnPage());
                },
                child: Text("Column View"),
              ),
              TextButton(
                onPressed: () {
                  Get.to(GridPage());
                },
                child: Text("Grid View"),
              ),
              // TextButton(
              //   onPressed: () {
              //     Get.to(ListPage());
              //   },
              //   child: Text("List View"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
