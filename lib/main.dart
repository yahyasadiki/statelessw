import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void _handleButtonPress(String lang) {
  print("Button pressed: $lang");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Flutter TP',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Quel est ton langage de programmation favori ?'),
            ElevatedButton(
              onPressed: () => _handleButtonPress('Python'),
              child: const Text('Python'),
            ),
            ElevatedButton(
              onPressed: () => _handleButtonPress('Dart'),
              child: const Text('Dart'),
            ),
            ElevatedButton(
              onPressed: () => _handleButtonPress('Java'),
              child: const Text('Java'),
            ),
            ElevatedButton(
              onPressed: () => _handleButtonPress('C++'),
              child: const Text('C++'),
            ),
          ],
        ),
      ),
    );
  }
}
