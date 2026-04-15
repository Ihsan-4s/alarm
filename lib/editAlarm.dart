import 'package:flutter/material.dart';

class editAlarm extends StatefulWidget {
  const editAlarm({super.key});

  @override
  State<editAlarm> createState() => _editAlarmState();
}

class _editAlarmState extends State<editAlarm> {
  bool isOff = false;
  bool isOff2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Alarm")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 100, bottom: 50),
              child: Text("11 : 40", style: TextStyle(fontSize: 100)),
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Ulangi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text("Setiap Hari  >"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Lewati Hari Libur Nasional",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: isOff,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      isOff = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Suara Alarm",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text("After the rain  >"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Label",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(">"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Tunda",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text("10 Menit   >"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Bergetar Ketika Berdering",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: isOff2,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      isOff2 = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
