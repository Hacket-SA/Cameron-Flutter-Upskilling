import 'package:cam_hacket_upskill_app/calculator.dart';
import 'package:cam_hacket_upskill_app/snake_game.dart';
import 'package:cam_hacket_upskill_app/startup_name_gen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const UpskillApp());
}

class UpskillApp extends StatelessWidget {
  const UpskillApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator',
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 20.0),
            bodyText2: TextStyle(fontSize: 18.0),
            button: TextStyle(fontSize: 18.0),
          ),
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF111111),
            foregroundColor: Color(0xFFFF9000),
          ),
        ),
        home: const Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Cameron\'s Upskill App')),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const StartupNameGen();
                    }));
                  },
                  child: const Text(
                    'Startup Name Generator',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Calculator();
                    }));
                  },
                  child: const Text(
                    'Calculator',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SnakeGame();
                    }));
                  },
                  child: const Text(
                    'Snake Game',
                  )),
            ),
          ],
        )));
  }
}
