import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Mengenal Widget"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            )
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
        ),
        body: const Center(
          child: BiggerText(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ));
  }
}

class BiggerText extends StatefulWidget {
  const BiggerText({super.key});

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Text Yang Ditampilkan",
        style: TextStyle(fontSize: _textSize),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.orange, width: 1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              )
            ]),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(10.0),
        // color: Colors.blue,
        child: const Text(
          "Didalam Container",
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      ElevatedButton(
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
          child: const Text("Perbesar"))
    ]);
  }
}
