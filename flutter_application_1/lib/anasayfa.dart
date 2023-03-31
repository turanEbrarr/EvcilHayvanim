import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/evcilHayvanEkle.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({super.key});

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      floatingActionButton: IconButton(
        color: Colors.amber,
        icon: Icon(Icons.pets),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => evcilHayvanEkle()),
          );
        },
      ),
    );
  }
}
