import 'dart:io';
import 'dart:ui';

import 'package:redis/redis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:koukicons/oldTimeCamera.dart';
import 'secondscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:koukicons/graduationCap.dart';

import 'package:koukicons/signpost.dart';

import 'package:koukicons/openFolder2.dart';
import 'package:animated_dialog_box/animated_dialog_box.dart';
import 'package:koukicons/info.dart';
import 'adminsinside.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'dart:math';

import 'dart:io' show exit, ProcessSignal;
import 'package:dartis/dartis.dart';

import 'package:dartis/dartis.dart' as redis show PubSub;

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}
class Guideline extends StatefulWidget {
  const Guideline({Key key}) : super(key: key);

  @override
  _GuidelineState createState() => _GuidelineState();
}

class _GuidelineState extends State<Guideline> {
  void annen() async {
    final broker =
    await redis.PubSub.connect<String, String>('redis://192.168.0.14:6379');

    print('connected');

    // Ctrl+C handler.
    ProcessSignal.sigint.watch().listen((_) async {
      await broker.disconnect();
      print('just wonder if its work or not');
      exit(0);
    });

    // Outputs the data received from the server.
    broker.stream.listen((event) {
      if (event is MessageEvent) {
        print(event.message);
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
          broker.punsubscribe();
        }
      } else {
        print(event);
      }
    }, onError: print, onDone: () => exit(0));

    // Subscribes the client to some channels.
    broker.psubscribe(pattern: 'commands');
  }

  @override
  void initState() {
    annen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Image.asset('images/guideline.png'),
        ),
      ),
    );
  }
}


class _MainScreenState extends State<MainScreen> {
  // ignore: close_sinks

  void annen() async {
    final broker =
        await redis.PubSub.connect<String, String>('redis://192.168.0.14:6379');

    print('connected');

    // Ctrl+C handler.
    ProcessSignal.sigint.watch().listen((_) async {
      await broker.disconnect();
      print('just wonder if its work or not');
      exit(0);
    });

    // Outputs the data received from the server.
    broker.stream.listen((event) {
      if (event is MessageEvent) {
        print(event.message);
        if (event.message == '1') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          broker.punsubscribe();
        }
        else if (event.message == '2') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AdminisUnit()));
          broker.punsubscribe();
        }
        else if (event.message == '3') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mapinfs()));
          broker.punsubscribe();
        }
        else if (event.message == 'help') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Guideline())); //guideline fonksiyonu eklenecek
          broker.punsubscribe();
        }
      } else {
        print(event);
      }
    }, onError: print, onDone: () => exit(0));

    // Subscribes the client to some channels.
    broker.psubscribe(pattern: 'commands');
  }

  @override
  void initState() {
    annen();
    super.initState();
  }
  // ignore: must_call_super

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'images/bau_logo.png',
              width: 300,
              height: 300,
            ),
            Text(
              'Welcome to the BAU D building\n'
              '       How can I help you?',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF01579b),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Majors()));

                  print('button1 pressed');
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF01579b),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 100,
                  child: Row(
                    children: [
                      Text(
                        '  1',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Architects Daughter',
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan.shade600,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 1.2,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'Academic Units',
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blueGrey.shade700,
                          fontSize: 40,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 260),
                      KoukiconsGraduationCap(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdminisUnit()));

                  print('button1 pressed');
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFffb74d),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 100,
                  child: Row(
                    children: [
                      Text(
                        ' 2',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Architects Daughter',
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan.shade600,
                        ),
                      ),
                      Container(
                        height: 60,
                        child: VerticalDivider(
                          thickness: 1.5,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'Administrative Units',
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.orangeAccent.shade200,
                          fontSize: 40,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      KoukiconsOpenFolder2(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mapinfs()));
                  print('button1 pressed');
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF4caf50),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 100,
                  child: Row(
                    children: [
                      Text(
                        ' 3',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Shadows Into Light',
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade300,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 1.2,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'Classes and Offices',
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.green.shade600,
                          fontSize: 40,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      KoukiconsSignpost(
                        height: 90,
                      ),


                    ],
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/flow.gif',
                  width: 110,
                  height: 110,
                ),
                Row(
                    children: [
                      InkWell(

                        child: Text(
                          'Say "Help" to open\n'
                              '  the Guideline',
                          style: TextStyle(
                              fontFamily: 'Architects Daughter',
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Guideline()));


                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      KoukiconsInfo(
                        height: 50,
                      ),
                    ],
                  ),

              ],
            ),
          ],
          ),
        ),
      ),
    );
  }
}
