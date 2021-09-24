import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nov extends StatelessWidget {
  const Nov({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Center(
          child: Text(
            'November',
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
              date("1"),
              date("2"),
              date("3"),
              date("4"),
              date("5"),
              date("6"),
              date("7"),
              date("8"),
              date("9"),
              date("10"),
              date("11"),
              date("12"),
              date("13"),
              date("14"),
              date("15"),
              date("16"),
              date("17"),
              date("18"),
              date("19"),
              date("20"),
              date("21"),
              date("22"),
              date("23"),
              date("24"),
              date("25"),
              date("26"),
              date("27"),
              date("28"),
              date("29"),
              date("30"),
              date("31"),
            ],
          ),
        ),
      ),
    );
  }

  Widget date(String dat) {
    String y = dat;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            Colors.red.shade400,
            Colors.black.withOpacity(0.7),
          ], begin: Alignment(-1, -1), end: Alignment(1, 1))),
      child: TextButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => MyApp()),
          // );
        },
        child: Center(
          child: Text(
            y,
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
}

Widget Abc() {
  databaseRef.once().then((DataSnapshot snapshot) {
    print('Data : ${snapshot.value}');
  });
}