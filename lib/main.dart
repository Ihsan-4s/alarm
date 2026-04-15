import 'package:flutter/material.dart';
import 'package:alarm2/alarm.dart';
import 'package:alarm2/stopwatch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'daerah.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: "Flutter App Demo"),
      routes: {
        '/': (context) => MyHomePage(title: "Flutter App Demo"),
        '/alarm': (context) => AlarmPage(),
        '/stopwatch': (context) => StopWatchPage(),
        '/daerah': (context) => Daerah(),
      },
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
  String currentTime = "";
  late Timer timer;

  @override
  void initState() {
    super.initState();
    _updateTime();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    setState(() {
      currentTime = "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(Icons.notifications),
        title: Text("My Alarm"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

            Image.asset("assets/images/jam.jpg", width: 100, height: 100),

          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              currentTime,
              style: TextStyle(
                color: Colors.blue[200],
                fontSize: 100,
                fontWeight: FontWeight.bold,
                fontFamily: 'Schyler', //Maanual font, set puspec
              ),
            ),
          ),

          Text("Google Fonts", style: GoogleFonts.aboreto(fontSize: 15)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(right: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/alarm');
                  },
                  child: Text("Buat Alarm"),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/stopwatch');
                  },
                  child: Text("StopWatch"),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/daerah');
              },
              child: Text("Button route"),
            ),
          ),
        ],
      ),
    );
  }
}
