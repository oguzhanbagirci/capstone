import 'dart:ui';

import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:koukicons/graduationCap.dart';
import 'package:koukicons/archive2.dart';
import 'package:koukicons/world.dart';
import 'package:koukicons/track.dart';
import 'package:koukicons/streetOrien.dart';
import 'package:koukicons/signpost.dart';
import 'package:koukicons/roadmap.dart';
import 'package:koukicons/printer.dart';
import 'package:koukicons/openFolder2.dart';
import 'package:animated_dialog_box/animated_dialog_box.dart';
import 'package:koukicons/info.dart';









class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Color(0xFF325aab),



        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/bau_logo.png', width: 300, height: 300,),
              Text(
                'Welcome to the BAU D building\n'
                '       How can I help you?',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Architects Daughter' ,
                  color: Color(0xFF01579b),
                ),
              ),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Majors()));

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

                        Text('  1',
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Architects Daughter',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF01579b),
                          ),

                        ),
                        SizedBox(
                          height: 50,


                          child: VerticalDivider(
                            thickness: 1.2,

                            color: Color(0xFF01579b),
                          ),
                        ),
                        Text('Academic Units',
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Color(0xFF01579b),
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

                      Text(' 2',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Architects Daughter',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFffb74d),
                        ),

                      ),
                      Container(
                        height: 60,
                        child: VerticalDivider(
                          thickness: 1.5,


                          color: Color(0xFFffb74d) ,
                        ),
                      ),
                      Text('Administrative Units',
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Color(0xFFffb74d),
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
              SizedBox(
                height: 25,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => InfoPage()));
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

                        Text(' 3',
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Architects Daughter',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4caf50),
                          ),

                        ),
                        SizedBox(
                          height: 50,


                          child: VerticalDivider(
                            thickness: 1.2,

                            color: Color(0xFF4caf50) ,
                          ),
                        ),
                        Text('Classes and Offices',
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Color(0xFF4caf50),
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


                  Image.asset('images/voice.gif', width: 110, height: 110,),
                  FlatButton(
                    onPressed: () async {
                      await animated_dialog_box.showRotatedAlert(

                          title: Center(child: Text("Guideline")), // IF YOU WANT TO ADD
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
                          icon: Icon(Icons.info_outline,color: Colors.red,), // IF YOU WANT TO ADD ICON
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
                            fontWeight: FontWeight.w600
                          ),

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

