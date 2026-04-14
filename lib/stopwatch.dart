import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  int jam = 0;
  int menit = 0;
  int detik = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("StopWatch")),

      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 20, bottom: 200),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 5),
                  // color: Colors.black12,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                //  child: Text("$jam", style: TextStyle(fontSize: 50),)
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$jam"),
                    Text(":"),
                    Text("$menit"),
                    Text(":"),
                    Text("$detik"),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(padding: EdgeInsetsGeometry.only(top: 200),
                // child:
                SizedBox(height: 360),
                InkWell(
                  onTap: () {
                    setState(() {
                      jam = 0;
                      menit = 0;
                      detik = 0;
                    });
                  },
                  child: Icon(Icons.history),
                ),

                SizedBox(width: 50),
                InkWell(
                  onTap: () {
                    setState(() {
                      jam = jam + 1;
                    });
                    setState(() {
                      menit = menit + 1;
                    });
                    setState(() {
                      detik = detik + 1;
                    });
                  },
                  child: Icon(Icons.play_arrow, size: 100),
                ),

                SizedBox(width: 50),

                Icon(Icons.alarm),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
