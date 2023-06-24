import 'package:flutter/material.dart';

class Hellos extends StatelessWidget {
  const Hellos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practice of themeData",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),

      //
      drawer: Drawer(),
    );
  }
}
