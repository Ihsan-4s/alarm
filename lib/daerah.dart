import 'package:flutter/material.dart';

class Daerah extends StatelessWidget {
  const Daerah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Daerah"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Jawa Barat"),
            subtitle: Text("Deskripsi Daerah 1"),
          ),
          ListTile(
            title: Text("Jawa Tengah"),
            subtitle: Text("Deskripsi Daerah 2"),
          ),
          ListTile(
            title: Text("Jawa Timur"),
            subtitle: Text("Deskripsi Daerah 3"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // Handle floating action button press
      }, child: Text("+"),),
    );
  }
}