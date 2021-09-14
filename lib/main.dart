import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Mesajlaşma Uygulaması",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesaj App"),
      ),
      body: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List mesajListesi = [];
  TextEditingController t1 = TextEditingController();
  mesajEkle() {
    setState(() {
      mesajListesi.add(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Flexible(child: ListView.builder(itemBuilder: (context,indexNo),
        ),
      ),
        TextField(
          controller: t1,
        ),
        ElevatedButton(
          onPressed: mesajEkle,
          child: Icon(Icons.send_sharp),
        ),
      ],
    ));
  }
}
