import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Text("Welcome Page",
                    style: TextStyle(
                        fontFamily: 'Ribeye',
                        fontSize: 55,
                        color: Color(0xFFE86B02BB),
                    )),
            )
        ));
  }
}
