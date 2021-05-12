// ignore: avoid_web_libraries_in_flutter
import 'package:capstonefinal1/mappage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'majorsinside.dart';

import 'dart:ui';

import 'mappage.dart';

import 'package:koukicons/flashOn.dart';
import 'package:koukicons/blueprint.dart';
import 'package:koukicons/biotech.dart';
import 'package:koukicons/calc2.dart';
import 'package:koukicons/chargingBattery.dart';
import 'package:koukicons/biomass.dart';
import 'package:koukicons/deployment.dart';
import 'package:koukicons/services.dart';
import 'package:koukicons/network2.dart';
import 'package:koukicons/inspection.dart';
import 'package:koukicons/more.dart';
import 'package:koukicons/electronics.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(crossAxisCount: 2, children: [
            Card(
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage1()));
                  print('button1 pressed');
                },
                child: Image.asset(
                  'images/1.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage2()));
                  print('button2 pressed');
                },
                child: Image.asset(
                  'images/2.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage3()));
                  print('button2 pressed');
                },
                child: Image.asset(
                  'images/3.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage4()));
                  print('button2 pressed');
                },
                child: Image.asset(
                  'images/4.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage5()));
                  print('button2 pressed');
                },
                child: Image.asset(
                  'images/5.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ]),
        )
      ],
    );
  }
}

// ignore: must_be_immutable

class Majors extends StatefulWidget {
  @override
  _MajorsState createState() => _MajorsState();
}

class _MajorsState extends State<Majors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D Block Departments'),
      ),
      backgroundColor: Colors.blueGrey,
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        crossAxisCount: 3,
        children: [
          Card(
            color: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComputerEng()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsElectronics(height: 120),
                    Text(
                      '   Computer\n'
                      ' Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.yellowAccent.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Electric()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsFlashOn(height: 120),
                    Text(
                      'Electric&Electronic\n'
                      '     Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 16.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.pinkAccent.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CivilEng()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsBlueprint(height: 120),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '       Civil\n'
                      '  Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 17.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.lightGreenAccent.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mechatronics()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsServices(height: 120),
                    Text(
                      'Mechatronics\n'
                      ' Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.lightBlueAccent.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MBG()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsBiotech(height: 120),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' Molecular Biology\n'
                      '     and Genetics ',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 17.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.purpleAccent.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Math()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsCalc2(height: 120),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mathematics',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.tealAccent.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Energy()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsChargingBattery(height: 120),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Energy Systems\n'
                      '   Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.brown.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Software()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsMore(height: 80),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '  Software \n'
                      'Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.deepOrangeAccent.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Industrial()));
              },

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsDeployment(height: 120),
                    Text(
                      '  Industrial\n Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AI()));

              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsNetwork2(height: 120),
                    Text(
                      'AI Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Card(
            color: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Management()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsInspection(height: 120),
                    Text(
                      ' Management\n'
                      ' Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Biomed()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KoukiconsBiomass(height: 120),
                    Text(
                      ' Biomedical\n'
                      ' Engineering',
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
