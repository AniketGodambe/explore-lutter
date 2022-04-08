import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 21;
    var name = "Aniket";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Git Hub Demo'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            '$name is $days years youg men.  ',
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
