// ignore: avoid_web_libraries_in_flutter

import 'package:capstonefinal1/mappage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dart:ui';

import 'package:auto_layout/auto_layout.dart';
import 'mappage.dart';


class InfoPage extends StatefulWidget {
  @override
  _InfoPageState  createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(crossAxisCount: 2,
              children:[

                Card(
                  color: Colors.lightBlue,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> MapPage1() ));
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
                          MaterialPageRoute(builder: (context)=> MapPage2() ));
                      print('button2 pressed');
                    },
                    child: Image.asset(
                      'images/2.png',
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),),
                Card(
                  color: Colors.lightBlue,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> MapPage3() ));
                      print('button2 pressed');
                    },
                    child: Image.asset(
                      'images/3.png',
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),),
                Card(
                  color: Colors.lightBlue,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> MapPage4() ));
                      print('button2 pressed');
                    },
                    child: Image.asset(
                      'images/4.png',
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),),
                Card(
                  color: Colors.lightBlue,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> MapPage5() ));
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
              ]
          ),
        )
      ],
    );
  }
}




// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
List<String> Lecturer = <String>[
  '1.Doç. Dr. Tevfik AYTEKİN',
  '2.Prof. Dr. Nafiz ARICA',
  '3.Prof. Dr. Çağatay ÇATAL',
  '4.Dr. Öğr. Üyesi Cemal Okan ŞAKAR',
  '5.Dr. Öğr. Üyesi Tarkan AYDIN',
  '6.Dr. Öğr. Üyesi Övgü ÖZTÜRK',
  '7.Dr. Öğr. Üyesi Selçuk BAKTIR',
  '8.Dr. Öğr. Üyesi Ece Gelal SOYAK',
  '9.Dr. Öğr. Üyesi Görkem KAR',

];
// ignore: non_constant_identifier_names
List<String> namesbody = <String>[
  'Tevfik AYTEKİN',
  'Nafiz ARICA',
  'Çağatay ÇATAL',
  'Cemal Okan ŞAKAR',
  'Tarkan AYDIN',
  'Övgü ÖZTÜRK',
  'Selçuk BAKTIR',
  'Ece Gelal SOYAK',
  'Görkem KAR',
];
List<String> mails = <String>[
  ' Email: tevfik.aytekin@eng.bau.edu.tr',
  ' Email: nafiz.arica@eng.bau.edu.tr',
  ' Email: cagatay.catal@eng.bau.edu.tr',
  ' Email: okan.sakar@eng.bau.edu.tr',
  ' Email: tarkan.aydin@eng.bau.edu.tr',
  ' Email: ovgu.ozturk@eng.bau.edu.tr',
  ' Email: selcuk.baktir@eng.bau.edu.tr',
  ' Email: ece.gelalsoyak@eng.bau.edu.tr',
  ' Email: gorkem.kar@eng.bau.edu.tr',
];
List<String> phoneno = <String>[
  ' Phone No: +90 212 381 0580',
  ' Phone No: +90 212 381 5800',
  ' Phone No: +90 212 381 0000',
  ' Phone No: +90 212 381 0571',
  ' Phone No: +90 212 381 0318',
  ' Phone No: +90 212 381 5688',
  ' Phone No: +90 212 381 5676',
  ' Phone No: +90 212 381 0000',
  ' Phone No: +90 212 381 0569',

];
  List<String> officeno = <String>[
    ' Office No: D529',
    ' Office No: D515',
    ' Office No: D411',
    ' Office No: D413',
    ' Office No: D413',
    ' Office No: D309',
    ' Office No: D519',
    ' Office No: D312',
    ' Office No: D519',

  ];
  List<String> imagename = <String>[
    'images/tevfikaytekin.png',
    'images/nafizarica.png',
    'images/cagataycatal.png',
    'images/cemalokansakar.png',
    'images/tarkanaydın.png',
    'images/ovguozturk.png',
    'images/selcukbaktır.png',
    'images/ecegelal.png',
    'images/gorkemkar.png',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(
          title: Text("Computer Science Lecturer List"),
          actions: [
            IconButton(
              onPressed: () {
                print('logout...');
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {
            return ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return ListTile(

                    onTap: () {
                      buildBody(index); //must invoke the method to build body content
                    },
                    title: Text(Lecturer[index]),
                  );
                });
          },
          initialPage: 0, //start index = 0
          bodyItemBuilder: (context, index) {
            print('building body $index');
            return Scaffold(
              body: Column(
                children: [
                  CircleAvatar(
                    radius: 120,
                    backgroundImage:AssetImage(imagename[index]),
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 25.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.lightBlueAccent.shade100,
                      child: Row(
                        children: [
                          Icon(
                            Icons.mail_outline,
                            color: Colors.black87,
                          ),
                          Text(
                            mails[index],
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.lightBlueAccent.shade100,
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            phoneno[index],
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.lightBlueAccent.shade100,
                      child: Row(
                        children: [
                          Icon(
                            Icons.print,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Fax No : +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.lightBlueAccent.shade100,
                      child: Row(
                        children: [
                          Icon(
                            Icons.sensor_door_outlined,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            officeno[index],
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}


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
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.computer_sharp,
                      size: 100,
                    ),
                    Text(
                      'Computer Science',
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
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.offline_bolt_outlined,
                      size: 100,
                    ),
                    Text(
                      'Electric&Electronic\n'
                          'Engineering',
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

          Card(
              color: Colors.pinkAccent.shade100,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(

                        Icons.roofing_outlined,

                    size: 100,
                  ),
                  Text(
                    '      Civil\n'
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
          Card(
            color: Colors.lightGreenAccent.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                      Icons.precision_manufacturing_outlined,
                    size: 100,
                  ),
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
          Card(
            color:Colors.lightBlueAccent.shade200,


            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                      Icons.biotech_outlined,
                    size: 100,
                  ),
                  Text(
                    '   Molecular Biology\n'
                        '     and Genetics ',
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
          Card(
            color: Colors.purpleAccent.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                      Icons.calculate_outlined,
                    size: 100,
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
          Card(
            color: Colors.tealAccent.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.charging_station_outlined,
                    size: 100,
                  ),
                  Text(
                    'Energy Systems\n'
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
          Card(
            color: Colors.brown.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.code_outlined,
                    size: 100,
                  ),
                  Text(
                    'Software Engineering',
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
          Card(
            color: Colors.deepOrangeAccent.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.poll_outlined,
                    size: 100,
                  ),
                  Text(
                    'Industrial\n Engineering',
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
        ],
      ),
    );
  }
}

