import 'package:flutter/material.dart';

void main() {
  const Text myText = Text('Hello Storm');
  const Center myCenteredText = Center(
    child: myText,
  );
  const Scaffold myScaffold = Scaffold(
    body: myCenteredText,
  );
  const MycrazyApp crazyApp = MycrazyApp();
  runApp(crazyApp);

  const MaterialApp myApp = MaterialApp(
    home: myScaffold,
  );
  runApp(crazyApp);
}

class MycrazyApp extends StatelessWidget {
  const MycrazyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello Storm',
              style: TextStyle(
                fontFamily: 'Ribeye',
                fontSize: 35,
                color: Color(0xFFB3CBFFFBBFF),
              )),
        ),
        appBar: AppBar(
          title: Text('Hello Storm'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: printHello,
          child: Image.asset(
            'assets/fb.png',
            width: 300,
          ),
        ),
      ),
    );
  }
}

void printHello() {
  print('Hello Storm');
}
