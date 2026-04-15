import 'package:flutter/material.dart';
import 'package:alarm2/editAlarm.dart';

class ListAlarm extends StatefulWidget {
  const ListAlarm({super.key});

  @override
  State<ListAlarm> createState() => _ListAlarmState();
}

class _ListAlarmState extends State<ListAlarm> {
  List<bool> isOnList = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Alarm List"),
        backgroundColor: Colors.teal[400],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return 
              ListTile(
                  onTap: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:( (context) => editAlarm())                             
                              ),
                            );
                },
                  leading: Icon(Icons.alarm_sharp),
                  title: Text("02:50"),
                  subtitle: Text("Everyday"),
                  trailing:
                      // Icon(Icons.toggle_off),
                      Switch(
                        activeColor: Colors.blue,
                        value: isOnList[index],
                        onChanged: (value) {
                          setState(() {
                            isOnList[index] = value;
                          });
                        },
                      ),
                );
        },
      )
    );
  }
}