// ignore: avoid_web_libraries_in_flutter
import 'dart:io';

import 'package:capstonefinal1/academicstaff.dart';
import 'package:capstonefinal1/mainscreen.dart';
import 'package:capstonefinal1/mappage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'dart:ui';

import 'mappage.dart';

import 'package:flutter/widgets.dart';






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
import 'dart:io' show exit, ProcessSignal;
import 'package:dartis/dartis.dart';

import 'package:dartis/dartis.dart' as redis show PubSub;




//onur
import 'package:capstonefinal1/mappage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:koukicons/bookmark2.dart';

import 'dart:ui';
import 'mappage.dart';
import 'package:koukicons/world.dart';
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
import 'package:koukicons/electroDevices.dart';
import 'package:koukicons/business.dart';
import 'package:koukicons/galleryX.dart';
import 'package:koukicons/diploma.dart';
import 'package:koukicons/conferenceCall.dart';
import 'adminsinside.dart';
import 'package:koukicons/users.dart';

class Mapinfs extends StatefulWidget {
  @override
  _MapinfsState createState() => _MapinfsState();
}

class _MapinfsState extends State<Mapinfs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D Block Classes And Labs'),
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(4),
          crossAxisSpacing:10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: [
            Card(
              color: Color(0xFF7576D5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage1()));
                  print('button1 pressed');
                },
                child: Image.asset(
                  'images/groundinfo.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Color(0xFFE29154),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage2()));
                  print('button2 pressedd');
                },
                child: Image.asset(
                  'images/info2.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Color(0xFFE06F6F),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage3()));
                  print('button3 pressed');
                },
                child: Image.asset(
                  'images/info3.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Color(0xFF6FD4B5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage4()));
                  print('button4 pressed');
                },
                child: Image.asset(
                  'images/info4.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Card(
              color: Color(0xFF6FD4B5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage5()));
                  print('button4 pressed');
                },
                child: Image.asset(
                  'images/info5.png',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),

          ]
      ),
    );

  }
}

// ignore: must_be_immutable

class Majors extends StatefulWidget {
  @override
  _MajorsState createState() => _MajorsState();
}

class _MajorsState extends State<Majors> {

  void annen() async {


    final killer =
    await redis.PubSub.connect<String, String>('redis://192.168.0.14:6379');

    print('connected');

    // Ctrl+C handler.
    ProcessSignal.sigint.watch().listen((_) async {
      await killer.disconnect();
      print('just wonder if its work or not');
      exit(0);
    });





    // Outputs the data received from the server.
    killer.stream.listen((event){
      if(event is MessageEvent){

        print(event.message);
        if(event.message == '1'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ComputerEng()));
          killer.punsubscribe();

        }
        else if(event.message == '2'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Electric()));
          killer.punsubscribe();

        }

        else if(event.message == '3'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CivilEng()));
          killer.punsubscribe();

        }
        else if(event.message == '4'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mechatronics()));
          killer.punsubscribe();

        }
        else if(event.message == '5'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MBG()));
          killer.punsubscribe();

        }
        else if(event.message == '6'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Math()));
          killer.punsubscribe();

        }
        else if(event.message == '7'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Energy()));
          killer.punsubscribe();

        }
        else if(event.message == '8'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Software()));
          killer.punsubscribe();

        }
        else if(event.message == '9'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Industrial()));
          killer.punsubscribe();

        }
        else if(event.message == '10'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Management()));
          killer.punsubscribe();

        }
        else if(event.message == '11'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Biomed()));
          killer.punsubscribe();

        }
        else if(event.message == '12'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AI()));
          killer.punsubscribe();

        }






      }





      else{
        print(event);
      }
    },onError: print,onDone: () => exit(0));




    // ignore: non_constant_identifier_names


    // Subscribes the client to some channels.
    killer.psubscribe(pattern: 'commands');
  }






  @override
  void initState() {
    annen();
    super.initState();

  }


  // ignore: must_call_super





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




class AdminisUnit extends StatefulWidget {
  @override
  _AdminisUnitState createState() => _AdminisUnitState();
}

class _AdminisUnitState extends State<AdminisUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Administrative Units '),
      ),
      backgroundColor: Color(0xFFB5FFFB),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: [
          Card(

            color: Color(0xFFEA98C9),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bausem()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 1 to Enter",
                        style: TextStyle(
                          fontSize: 15,



                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsConferenceCall(height: 115),
                        Text(
                          '  BAUSEM',
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.teal.shade900,
                            fontSize: 22.0,
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

            color: Color(0xFF9AEA98),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bautto()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 2 to Enter",
                        style: TextStyle(
                          fontSize: 15,



                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsElectroDevices(height: 120),
                        Text(
                          'BAUTTO',
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.teal.shade900,
                            fontSize: 22.0,
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

            color: Color(0xE4EEB99D),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InternationalEx()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 3 to Enter",
                        style: TextStyle(
                          fontSize: 15,



                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsWorld(height: 120),
                        Text(
                          ' International Exchange\n'
                              '          Office',
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.teal.shade900,
                            fontSize: 18.0,
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

            color: Color(0xDAF5E36C),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Coop()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 4 to Enter",
                        style: TextStyle(
                          fontSize: 15,



                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsBusiness(height: 120),
                        Text(
                          ' CO-OP',

                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.teal.shade900,
                            fontSize: 22.0,
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

            color: Color(0xFFAB99FC),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Biomed()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 5 to Enter",
                        style: TextStyle(
                          fontSize: 15,



                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsGalleryX(height: 120),
                        Text(
                          ' BAUART',

                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.teal.shade900,
                            fontSize: 22.0,
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

            color: Color(0xFF998A8A),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Affairs()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 5 to Enter",
                        style: TextStyle(
                          fontSize: 15,



                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsUsers(height: 120),
                        Text(
                          ' Student Affairs',

                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.teal.shade900,
                            fontSize: 22.0,
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

            color: Color(0xFF7788F5),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Library()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 5 to Enter",
                        style: TextStyle(
                          fontSize: 15,



                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsBookmark2(height: 120),
                        Text(
                          ' Student Affairs',

                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.teal.shade900,
                            fontSize: 22.0,
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

            color: Color(0xE492EAFF),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Alumni()));


              },
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 6 to Enter",
                        style: TextStyle(
                          fontSize: 15,

                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KoukiconsDiploma(height: 112),
                        Text(
                          '  BAU Alumni\n'
                              '    Center',
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

        ],
      ),
    );
  }
}