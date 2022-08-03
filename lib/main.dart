import 'package:flutter/material.dart';

import 'offerspage.dart';

void main() {
  runApp(const MyApp());
}

class Greet extends StatefulWidget {
  const Greet({Key? key}) : super(key: key);

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  var name = "Roberto";

  @override
  Widget build(BuildContext context) {
    var greetStyle = const TextStyle(fontSize: 30);

    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              "Hello $name",
              style: greetStyle,
            ),
            Text(
              "!!!",
              style: greetStyle,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 24.0, left: 24.0),
        child: TextField(
          onChanged: (value) => setState(() {
            name = value;
          }),
        ),
      ),
    ]);
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello World!!!');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/logo.png"),
      ),
      body: const OffersPage(),
    );
  }
}
