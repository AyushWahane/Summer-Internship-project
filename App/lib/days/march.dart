import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mar extends StatelessWidget {
  const mar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Center(
          child: Text(
            'March',
            style: TextStyle(
                color: Colors.white, fontSize: 34, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        shadowColor: Colors.red,
        elevation: 40,
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
              dte(b: "31"),
            ],
          ),
        ),
      ),
    );
  }

}

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

  Widget Aabc() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("March 1st"),
        ),
        body: Center(
          child: Text("Attendance not available!!!"),
        ),
      ),
    );
  }

  Widget abc() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("March 1st"),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Attendance",
                textScaleFactor: 2,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                textDirection: TextDirection.ltr,
                defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                border: TableBorder.all(width: 2.0, color: Colors.black),
                children: [
                  TableRow(children: [
                    Center(child: Text("S.No", textScaleFactor: 1.3)),
                    Center(child: Text("Name", textScaleFactor: 1.3)),
                    Center(child: Text("Enrollment", textScaleFactor: 1.3)),
                    Center(child: Text("Time", textScaleFactor: 1.3)),
                  ]),
                  TableRow(children: [
                    Center(child: Text("1", textScaleFactor: 1.2)),
                    Center(child: Text("Ayush", textScaleFactor: 1.2)),
                    Center(child: Text("001", textScaleFactor: 1.2)),
                    Center(child: Text("21:34", textScaleFactor: 1.2)),
                  ]),
                  TableRow(children: [
                    Center(child: Text("2", textScaleFactor: 1.2)),
                    Center(child: Text("Chirag", textScaleFactor: 1.2)),
                    Center(child: Text("002", textScaleFactor: 1.2)),
                    Center(child: Text("21:34", textScaleFactor: 1.2)),
                  ]),
                  TableRow(children: [
                    Center(child: Text("3", textScaleFactor: 1.2)),
                    Center(child: Text("David", textScaleFactor: 1.2)),
                    Center(child: Text("003", textScaleFactor: 1.2)),
                    Center(child: Text("21:34", textScaleFactor: 1.2)),
                  ]),
                  TableRow(children: [
                    Center(child: Text("4", textScaleFactor: 1.2)),
                    Center(child: Text("JT", textScaleFactor: 1.2)),
                    Center(child: Text("004", textScaleFactor: 1.2)),
                    Center(child: Text("21:34", textScaleFactor: 1.2)),
                  ]),
                  TableRow(children: [
                    Center(child: Text("5", textScaleFactor: 1.2)),
                    Center(child: Text("Krishna", textScaleFactor: 1.2)),
                    Center(child: Text("005", textScaleFactor: 1.2)),
                    Center(child: Text("21:34", textScaleFactor: 1.2)),
                  ]),
                  TableRow(children: [
                    Center(child: Text("6", textScaleFactor: 1.2)),
                    Center(child: Text("Tina", textScaleFactor: 1.2)),
                    Center(child: Text("006", textScaleFactor: 1.2)),
                    Center(child: Text("21:34", textScaleFactor: 1.2)),
                  ]),
                  TableRow(children: [
                    Center(child: Text("7", textScaleFactor: 1.2)),
                    Center(child: Text("Vijay", textScaleFactor: 1.2)),
                    Center(child: Text("007", textScaleFactor: 1.2)),
                    Center(child: Text("21:34", textScaleFactor: 1.2)),
                  ])
                ],
              ),
            ),
          ]),
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