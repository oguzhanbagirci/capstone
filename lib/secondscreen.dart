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
      backgroundColor: Color(0xFF2286D3),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: [
          Card(

            color: Colors.greenAccent.shade100,


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComputerEng()));


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
                        KoukiconsElectronics(height: 120),
                        Text(
                          '  Computer\n'
                              ' Engineering',
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

            color: Colors.red.shade200,


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Energy()));


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
                        KoukiconsChargingBattery(height: 120),
                        Text(
                          'Energy Systems\n'
                              '   Engineering',
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

            color: Color(0xFFDBE0B7),


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
                        KoukiconsBiomass(height: 120),
                        Text(
                          ' Biomedical\n'
                              ' Engineering',
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

            color: Colors.brown.shade100,


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mechatronics()));


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
                        KoukiconsServices(height: 120),
                        Text(
                          'Mechatronics\n'
                              ' Engineering',
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

            color: Color(0xFF89C8CB),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Industrial()));


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
                        KoukiconsDeployment(height: 120),
                        Text(
                          '  Industrial\n Engineering',
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

            color: Color(0xFFB7F4B6),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Electric()));


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
                        KoukiconsFlashOn(height: 120,
                          color: Colors.red,
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

            color: Colors.orangeAccent.shade100,


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Math()));


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
                        KoukiconsCalc2(height: 120),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Mathematics',
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

            color: Color(0xFFEE85B3),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Management()));


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
                        KoukiconsInspection(height: 120),
                        Text(
                          ' Management\n'
                              ' Engineering',
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

            color: Color(0xFF51BBE8),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AI()));


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
                        KoukiconsNetwork2(height: 120),
                        Text(
                          'AI Engineering',
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

            color: Color(0xFFB5E1F4),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Software()));


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
                        KoukiconsMore(height: 80),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          ' Software \n'
                              'Engineering',
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

            color: Color(0xFFFBC0E2),


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MBG()));


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
                        KoukiconsBiotech(
                          height: 120,
                          color: Colors.deepPurpleAccent,
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
                            fontSize: 20.0,
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
          ),
          Card(

            color: Colors.limeAccent.shade100,


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CivilEng()));


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
                        KoukiconsBlueprint(height: 120),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '      Civil\n'
                              '  Engineering',
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
          //gg

        ],
      ),
    );
  }
}
