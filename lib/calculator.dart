import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Calculator')),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.history),
              tooltip: 'Calculation History',
            ),
          ],
        ),
        body: const Center(child: Text('Calc App')));
  }
}
