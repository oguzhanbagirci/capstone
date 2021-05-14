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
              Text(
                'Welcome to the BAU D building\n'
                '       How can I help you?',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Gloria Hallelujah',
                  color: Color(0xFF325aab),
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
                        Text('Academic Units',
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
                      Text('Administrative Units',
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
                        Text('Classes and Offices',
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





            ],
          ),
        ),
      ),
    );
  }
}
