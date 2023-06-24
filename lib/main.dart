import 'package:flutter/material.dart';

import 'screens/hello.dart';
import 'screens/login.dart';
import 'screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // Program to show the use of themedata in your applicatons
      theme: ThemeData(
        //app bar styling using in hello screen
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
        ),
        drawerTheme: DrawerThemeData(backgroundColor: Colors.orange[100]),

        textTheme: const TextTheme(
          //title using in hello screen in app bar
          titleMedium: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20),

          //bodyMedium suing in welcome screen
          bodyMedium: TextStyle(fontSize: 25, color: Colors.green),
          bodySmall: TextStyle(
              fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600),
        ),

        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Hellos(),
    );
  }
}
