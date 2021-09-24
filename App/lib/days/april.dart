import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class April extends StatelessWidget {
  const April({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Center(
          child: Text(
            'April',
            style: TextStyle(
                color: Colors.white, fontSize: 34, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        shadowColor: Colors.pink,
        elevation: 30,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
          color: Colors.black.withOpacity(0.5),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 4,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 3,
            children: [
              dte(b: "1"),
              dte(b: "2"),
              dte(b: "3"),
              dte(b: "4"),
              dte(b: "5"),
              dte(b: "6"),
              dte(b: "7"),
              dte(b: "8"),
              dte(b: "9"),
              dte(b: "10"),
              dte(b: "11"),
              dte(b: "12"),
              dte(b: "13"),
              dte(b: "14"),
              dte(b: "15"),
              dte(b: "16"),
              dte(b: "17"),
              dte(b: "18"),
              dte(b: "19"),
              dte(b: "20"),
              dte(b: "21"),
              dte(b: "22"),
              dte(b: "23"),
              dte(b: "24"),
              dte(b: "25"),
              dte(b: "26"),
              dte(b: "27"),
              dte(b: "28"),
              dte(b: "29"),
              dte(b: "30"),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class dte extends StatelessWidget {
  final String b;
  const dte({Key? key, required this.b}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Colors.pink.shade300,
            Colors.black.withOpacity(0.7),
          ],
          begin: Alignment(-1, -1),
          end: Alignment(1, 1),
        ),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => abc()),
          );
        },
        child: Center(
          child: Text(
            b,
            textHeightBehavior: TextHeightBehavior(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget abc() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("April 1st"),
        ),
        body: Center(
          child: Text("Attendance not available!!!"),
        ),
      ),
    );
  }
}

Widget Abc() {
  databaseRef.once().then((DataSnapshot snapshot) {
    print('Data : ${snapshot.value}');
  });
}
