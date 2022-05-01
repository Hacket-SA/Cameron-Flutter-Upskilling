import 'package:flutter/material.dart';

class SnakeGame extends StatelessWidget {
  const SnakeGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Snake Game')),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.restart_alt),
              tooltip: 'Restart Game',
            ),
          ],
        ),
        body: const Center(child: Text('Snake Game')));
  }
}
