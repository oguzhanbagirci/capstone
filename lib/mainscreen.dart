import 'dart:ui';

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

import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'dart:math';





class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {



  List<String> _questions = [];
  
  //var newList = List<dynamic>();

  String answer;

  Future<List<String>> _loadQuestions() async {
    List<String> questions = [];
    await rootBundle.loadString('assets/ml.txt').then((q) {
      for (String i in LineSplitter().convert(q)) {

        questions.add(i);
      }
    });
    return questions;
  }


  Timer timer;

  @override
  void initState() {
    _setup();

    super.initState();
    timer =Timer.periodic(Duration(seconds: 5), (Timer t) => navigate());
  }





  _setup() async {
    // Retrieve the questions (Processed in the background)
    List<String> questions = await _loadQuestions();

    // Notify the UI and display the questions
    setState(() {
      _questions = questions;
    });
  }

  // ignore: missing_return


  void navigate() async {
    answer =  _questions[0];

    print(answer);




    setState(() {

      if (answer == 'one') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Majors()));
        timer.cancel();


      } else if (answer == 'two,') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Majors()));
      } else if (answer == 'three,') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => InfoPage()));
      }




    });



  }



  Card buildKey({Color color, String number, String unit, koukicons}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        child: Row(
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                thickness: 1.2,
                color: color,
              ),
            ),
            Text(
              unit,
              style: TextStyle(
                fontFamily: 'Architects Daughter',
                color: color,
                fontSize: 40,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 60),
            KoukiconsGraduationCap(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: new Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              buildKey(
                  color: Color(0xFF01579b),
                  number: '1',
                  unit: 'Academics Units',
                  koukicons: KoukiconsGraduationCap(
                    height: 100,
                  )),
              SizedBox(
                height: 25,
              ),
              buildKey(
                  color: Color(0xFFffb74d),
                  number: '2',
                  unit: 'Administrative Units',
                  koukicons: KoukiconsOpenFolder2(
                    height: 100,
                  )),
              SizedBox(
                height: 25,
              ),
              buildKey(color: Color(0xFF4caf50),number: '3',unit: 'Classes and Offices',koukicons: KoukiconsSignpost(height: 100,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/voice.gif',
                    width: 110,
                    height: 110,
                  ),
                  FlatButton(
                    onPressed: () async {
                      await animated_dialog_box.showRotatedAlert(
                        title: Center(
                            child: Text("Guideline")), // IF YOU WANT TO ADD
                        context: context,
                        firstButton: MaterialButton(
                          // FIRST BUTTON IS REQUIRED
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Colors.white,
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        secondButton: MaterialButton(
                          // OPTIONAL BUTTON
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Colors.white,
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        icon: Icon(
                          Icons.info_outline,
                          color: Colors.red,
                        ), // IF YOU WANT TO ADD ICON
                        yourWidget: Expanded(
                          child: Image.asset(
                            'images/guideline.png',
                            height: 600,
                            width: 500,
                          ),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'Say "Help" to open\n'
                              '  the Guideline',
                          style: TextStyle(
                              fontFamily: 'Architects Daughter',
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        KoukiconsInfo(
                          height: 50,
                        ),
                      ],
                    ),
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
