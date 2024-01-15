import 'package:flutter/material.dart';

import 'animate_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          body: Column(
        children: [
          const SizedBox(height: 100),
          Expanded(
            child: AnimateGridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                );
              },
              items: List.generate(10, (index) => index),
            ),
          ),
        ],
      )),
    );
  }
}
