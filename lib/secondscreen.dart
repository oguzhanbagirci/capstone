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
        backgroundColor: Colors.blue,
      ),
      
      backgroundColor: Colors.white,
      body: GridView.count(
        childAspectRatio: 1.15,

        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        children: [
          Card(

            color: Color(0xFFbbdefb),



            shape: RoundedRectangleBorder(

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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(8),
                        ), // green shaped
                      ),
                      child: Text(
                        "1",
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
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 9 to Enter",
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


            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),

            ),
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
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 7 to Enter",
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                          //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                          //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 8 to Enter",
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
          ),//management

          //IE//mech


          //math



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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                          //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 10 to Enter",
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 12 to Enter",
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
                    top: 0,

                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                      ),
                      child: Text(
                        "Say 11 to Enter",
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
    );
  }
}
