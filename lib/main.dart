
import 'package:flutter/material.dart';
import 'package:alarm2/alarm.dart';
import 'package:alarm2/stopwatch.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(
      title: "My Alarm"
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
        backgroundColor: Colors.blue,
        leading: Icon(Icons.circle_notifications),
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),

          Image.network("data:image/jpeg;base64,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"),

          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Alarm Pro Max",
              style: TextStyle(
                color: Colors.blue[200],
                fontSize: 100,
                fontWeight: FontWeight.bold,
                fontFamily: 'Schyler'//Maanual font, set puspec
              ),
            ),
          ),

          Text("Google Fonts", style: GoogleFonts.aboreto(fontSize: 15),),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(right: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint("Tombol alarm Di tekan");

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AlarmPage()),
                    );
                  },
                  child: Text("Buat Alarm"),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 5.0),
                  child:  ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => StopWatchPage
                      (),)
                    );
                  },
                  child: Text("StopWatch")),
                )
            ],
          ),
          Padding(
                padding: EdgeInsetsGeometry.all(10),
                  child:  ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => StopWatchPage
                      (),)
                    );
                  },
                  child: Text("Button route")),
                )
        ],
      ),
   
    );
  }
}
