import 'package:flutter/material.dart';

class Daerah extends StatefulWidget {
  const Daerah({super.key});

  @override
  State<Daerah> createState() => _DaerahState();
}

class _DaerahState extends State<Daerah> {
  List<String> lokasi = [
    "Jawa Barat",
    "Jawa Tengah",
    "Jawa Timur",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Daerah"),
      ),

      body: ListView.builder(
        itemCount: lokasi.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lokasi[index]),
            subtitle: const Text("Lokasi"),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            lokasi.add("Jawa Barat");
          });
        },
        child: const Text("+"),
      ),
    );
  }
}