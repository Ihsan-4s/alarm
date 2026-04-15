import 'package:flutter/material.dart';
import 'package:alarm2/listAlarm.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Your Alarm"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 30),
            child: Center(
              child: Icon(Icons.alarm, size: 100, color: Colors.blue),
            ),
          ),
          Text("07 : 59", style: TextStyle(fontSize: 35)),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Set My Alarm"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListAlarm()),
          );
        },
      ),
    );
  }
}
