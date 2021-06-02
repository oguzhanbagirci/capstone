// ignore: avoid_web_libraries_in_flutter
import 'package:capstonefinal1/mainscreen.dart';
import 'package:capstonefinal1/mappage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'majorsinside.dart';

import 'dart:ui';

import 'mappage.dart';

import 'package:flutter/widgets.dart';


import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';


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
import 'package:animated_text_kit/animated_text_kit.dart';

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
            context, MaterialPageRoute(builder: (context) => ComputerEng()));
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),

          SizedBox(
            height: 75,
            width: double.infinity,
            child: Row(
              children: [



                ColorizeAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: [
                      " Say the number on the top left to enter",
                      " Say the number on the top left to enter",
                      " Say the number on the top left to enter",
                    ],
                    textStyle: TextStyle(
                        fontSize: 35.0,
                        fontFamily: "Architects Daughter",


                    ),
                    colors: [
                      Color(0xFF0086c3),
                      Color(0xFFfb8c00),
                      Color(0xFFba2d65),
                      //Colors.red,
                    ],
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
                IconButton(
                  icon:Icon(Icons.arrow_back),
                  iconSize: 1,
                  color: Colors.white,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainScreen()));
                  },

                ),

              ],
            ),
          ),





          Expanded(
            child: GridView.count(

             childAspectRatio: 1.16,

             primary: false,
             padding: const EdgeInsets.all(4),
             crossAxisSpacing: 5,
             mainAxisSpacing: 5,
             crossAxisCount: 3,
             children: [



               Card(

                 color: Color(0xFFbbdefb),



                 shape: RoundedRectangleBorder(
                   side: BorderSide(
                     width: 3,
                     color: Color(0xFF003c8f),
                   ),

                   borderRadius: BorderRadius.circular(15),

                 ),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => ComputerEng()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                           child: Text(
                             "1",
                             style: TextStyle(
                               fontSize: 20,



                             ),
                           ),
                         ),

                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             KoukiconsElectronics(height: 120),
                             Text(
                               '  Computer\n'
                                   ' Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 18,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,

                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFffddc1),


                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15),
                   side: BorderSide(
                     width: 3,
                     color: Color(0xFF003c8f),
                   ),


                 ),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => AI()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                           child: Text(
                             "2",
                             style: TextStyle(
                               fontSize: 20,



                             ),
                           ),
                         ),

                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 10,
                             ),
                             KoukiconsNetwork2(height: 115),
                             SizedBox(
                               height: 10,
                             ),
                             Text(
                               'AI Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 19,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFe1bee7),


                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15),
                   side: BorderSide(
                     width: 3,
                     color: Color(0xFF003c8f),
                   ),

                 ),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Energy()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "3",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 10,
                             ),
                             KoukiconsChargingBattery(height: 105),
                             SizedBox(
                               height: 10,
                             ),
                             Text(
                               'Energy Systems\n'
                                   '   Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 18,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),




               Card(

                 color: Color(0xFFbbdefb),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Electric()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "4",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             KoukiconsFlashOn(height: 115,
                               color: Colors.yellow,
                             ),
                             Text(
                               'Electric&Electronic\n'
                                   '    Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 19.0,
                                 letterSpacing: 1.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFffddc1),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Math()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "5",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 10,
                             ),
                             KoukiconsCalc2(height: 110),
                             SizedBox(
                               height: 10,
                             ),
                             Text(
                               'Mathematics',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 20.0,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFe1bee7),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),

                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Biomed()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "6",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 10,
                             ),
                             KoukiconsBiomass(height: 110),
                             Text(
                               ' Biomedical\n'
                                   ' Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 19,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),


               Card(

                 color: Color(0xFFbbdefb),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Industrial()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "7",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             KoukiconsDeployment(height: 110),
                             Text(
                               '  Industrial\n Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 19.0,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFffddc1),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Mechatronics()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "8",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             KoukiconsServices(height: 110),
                             Text(
                               'Mechatronics\n'
                                   ' Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 19.0,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFe1bee7),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Management()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "9",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 10,
                             ),
                             KoukiconsInspection(height: 110),
                             Text(
                               ' Management\n'
                                   ' Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 19.0,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),

               Card(

                 color: Color(0xFFbbdefb),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Software()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "10",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 20,
                             ),
                             KoukiconsMore(height: 70),
                             SizedBox(
                               height: 20,
                             ),
                             Text(
                               ' Software \n'
                                   'Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 20.0,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFffddc1),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => CivilEng()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "11",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 5,
                             ),
                             KoukiconsBlueprint(height: 110),
                             SizedBox(
                               height: 5,
                             ),

                             Text(
                               '     Civil\n'
                                   '  Engineering',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 20.0,
                                 letterSpacing: 2.5,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),
               Card(

                 color: Color(0xFFe1bee7),


                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => MBG()));


                   },
                   child: Stack(
                     children: <Widget>[

                       Positioned(
                         top: 7,
                         left: 10,


                         child: Text(
                           "12",
                           style: TextStyle(
                             fontSize: 20,



                           ),
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.bottomCenter,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 10,
                             ),
                             KoukiconsBiotech(
                               height: 110,
                               color: Color(0xFFe91e63),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Text(
                               ' Molecular Biology\n'
                                   '     & Genetics ',
                               style: TextStyle(
                                 fontFamily: 'Architects Daughter',
                                 color: Colors.teal.shade900,
                                 fontSize: 18.0,
                                 letterSpacing: 2,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),

                           ],
                         ),

                       ),


                     ],
                   ),
                 ),
               ),//soft
               //civil
               //gg

             ],
              ),
          ),
        ],
      ),
    );
  }
}
