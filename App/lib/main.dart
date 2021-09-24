import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t1/days/april.dart';
import 'package:t1/days/august.dart';
import 'package:t1/days/dec.dart';
import 'package:t1/days/feb.dart';
import 'package:t1/days/jan.dart';
import 'package:t1/days/july.dart';
import 'package:t1/days/june.dart';
import 'package:t1/days/march.dart';
import 'package:t1/days/may.dart';
import 'package:t1/days/nov.dart';
import 'package:t1/days/oct.dart';
import 'package:t1/days/sept.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "HOME PAGE",
    home: home_page(),
  ));
}

// ignore: camel_case_types
class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 69,
          title: Positioned(
            left: 80,
            right: 31,
            top: 60,
            bottom: 45,
            child: Center(
              child: Text(
                'AttendanceApp',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          shadowColor: Colors.white,
          elevation: 10,
          backgroundColor: Colors.black45,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 21, horizontal: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black87, Colors.black54, Colors.black38],
              ),
              // backgroundBlendMode: BlendMode.clear,
            ),
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              mainAxisSpacing: 17,
              crossAxisSpacing: 16,
              childAspectRatio: 2,
              children: [
                MontR(month_a: "January"),
                MontL(Month_b: "February"),
                MontR(month_a: "March"),
                MontL(Month_b: "April"),
                MontR(month_a: "May"),
                MontL(Month_b: "June"),
                MontR(month_a: "July"),
                MontL(Month_b: "August"),
                MontR(month_a: "September"),
                MontL(Month_b: "October"),
                MontR(month_a: "November"),
                MontL(Month_b: "December"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MontR extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String month_a;
  // ignore: non_constant_identifier_names
  const MontR({Key? key, required this.month_a}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0, 0),
              colors: [
                Colors.white,
                Colors.orange.shade100,
                Colors.orange.shade300,
              ])),
      child: TextButton(
        onPressed: () {
          if (month_a == "January") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => jan()),
            );
          } else if (month_a == "March") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mar()),
            );
          } else if (month_a == "May") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => May()),
            );
          } else if (month_a == "July") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => july()),
            );
          } else if (month_a == "September") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sept()),
            );
          } else if (month_a == "November") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Nov()),
            );
          }
        },
        child: Text(
          month_a,
          style: TextStyle(shadows: [
            Shadow(
              blurRadius: 6.0,
              color: Colors.brown,
              offset: Offset(2.0, 2.0),
            )
          ], fontSize: 34, fontWeight: FontWeight.w500),
        ),
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
      ),
    );
  }
}

class MontL extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String Month_b;
  // ignore: non_constant_identifier_names
  const MontL({Key? key, required this.Month_b}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0, 0),
              colors: [
                Colors.white,
                Colors.lightBlue.shade200,
                Colors.lightBlue.shade400,
              ])),
      child: TextButton(
        onPressed: () {
          if (Month_b == "February") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => feb()),
            );
          } else if (Month_b == "April") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => April()),
            );
          } else if (Month_b == "June") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => June()),
            );
          } else if (Month_b == "August") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => August()),
            );
          } else if (Month_b == "October") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Oct()),
            );
          } else if (Month_b == "December") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dec()),
            );
          }
        },
        child: Text(
          Month_b,
          style: TextStyle(shadows: [
            Shadow(
              blurRadius: 6.0,
              color: Colors.brown,
              offset: Offset(2.0, 2.0),
            )
          ], fontSize: 34, fontWeight: FontWeight.w500),
        ),
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
      ),
    );
  }
}
