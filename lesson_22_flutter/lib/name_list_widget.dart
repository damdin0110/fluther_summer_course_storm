import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>names=['pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno','pummel','Bruno',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeScreen',
        ),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,itemCount: names.length,
             itemBuilder: (BuildContext context, int index){
               return Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   height: 50,
                   width: 5,
                   color: Colors.yellow,
                   child: Text(names[index]),
                 ),
               );

             },
      ),

    );
  }
}
