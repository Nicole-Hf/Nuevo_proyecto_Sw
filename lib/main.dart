import 'package:app_conductor/pages/pasajero/home_page.dart';
import 'package:app_conductor/widgets/register_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CreateAccountWidget(),       
        '/home': (context) => const MyHomePage(),
      },
    );
  }
}