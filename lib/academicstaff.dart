import 'dart:io';

import 'package:capstonefinal1/academicstaff.dart';
import 'package:capstonefinal1/mainscreen.dart';
import 'package:capstonefinal1/mappage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/getwidget.dart';

import 'dart:ui';

import 'mappage.dart';

import 'package:flutter/widgets.dart';

class ComputerEng extends StatelessWidget {
  ComputerEng({Key key}) : super(key: key);

  Card buildKey1(
      {String name,
      String name2,
      String photo,
      int number,
      String phone,
      String office,
      String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/tevfikaytekin/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cemalokansakar/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/tarkanaydin/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/ovguozturkergun/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/selcuk/selcuk.jpg',
    'https://akademik.bahcesehir.edu.tr/web/ecegelalsoyak/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/gorkemkar/tr/images/Bitmap.jpg',
  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0580',
    '                 Phone No: +90 212 381 5800',
    '      Phone No: +90 212 381 0000',
    ' Phone No: +90 212 381 0571',
    '           Phone No: +90 212 381 0318',
    '           Phone No: +90 212 381 5688',
    '       Phone No: +90 212 381 5676',
    '  Phone No: +90 212 381 0000',
    '            Phone No: +90 212 381 0569',
  ];
  List<String> officeno = <String>[
    'Office No: D529',
    '                Office No: D515',
    '    Office No: D411',
    'Office No: D413',
    '          Office No: D413',
    '           Office No: D309',
    '       Office No: D519',
    '  Office No: D312',
    '              Office No: D519',
  ];

  List<String> mails = <String>[
    '  Email: tevfik.aytekin@eng.bau.edu.tr',
    '               Email: nafiz.arica@eng.bau.edu.tr',
    '        Email: cagatay.catal@eng.bau.edu.tr',
    '  Email: okan.sakar@eng.bau.edu.tr',
    '             Email: tarkan.aydin@eng.bau.edu.tr',
    '            Email: ovgu.ozturk@eng.bau.edu.tr',
    '          Email: selcuk.baktir@eng.bau.edu.tr',
    '       Email: ece.gelalsoyak@eng.bau.edu.tr',
    '              Email: gorkem.kar@eng.bau.edu.tr',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: 'Tevfik Aytekin',
              name2: 'Assoc. Prof. & Department Chair',
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: '  Nafiz ARICA',
              name2: 'Prof.',
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: 'Çağatay ÇATAL',
              name2: 'Prof.',
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: 'Cemal Okan ŞAKAR',
              name2: 'Assist Prof.',
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: 'Tarkan AYDIN',
              name2: 'Assist Prof.',
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: 'Övgü ÖZTÜRK',
              name2: 'Assist Prof.',
              photo: imagename[5],
              number: 1,
              phone: phoneno[5],
              office: officeno[5],
              email: mails[5]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: 'Selçuk BAKTIR',
              name2: 'Assist Prof.',
              photo: imagename[6],
              number: 1,
              phone: phoneno[6],
              office: officeno[6],
              email: mails[6]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: 'Ece Gelal SOYAK',
              name2: 'Assist Prof.',
              photo: imagename[7],
              number: 1,
              phone: phoneno[7],
              office: officeno[7],
              email: mails[7]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: 'Görkem KAR',
              name2: 'Assist Prof.',
              photo: imagename[8],
              number: 1,
              phone: phoneno[8],
              office: officeno[8],
              email: mails[8]),
        ],
      ),
    );
  }
}

class Electric extends StatelessWidget {
  Electric({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Prof. ',
    'Assoc. Prof. ',
    'Assist Prof. ',
    'Teaching Assist. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Prof. ',
    'Assoc. Prof. ',
    'Assist Prof.',
  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Recep DİMİTROV',
    'Alkan SOYSAL',
    'Andrew John BEDDALL',
    'Merve İlay ÇELİKKAYA',
    'Mustafa Eren YILDIRIM',
    'Zafer İŞCAN',
    'Şeref KALEM',
    'Saeid KARAMZADEH',
    'Cavit Fatih KÜÇÜKTEZCAN',
  ];
  List<String> mails = <String>[
    '  Email: recep.dimitrov@eng.bau.edu.tr',
    '  Email: alkan.soysal@eng.bau.edu.tr',
    '  Email: andrewjohn.beddall@eng.bau.edu.tr',
    '  Email: merveilay.celikkaya@eng.bau.edu.tr',
    '  Email: mustafaeren.yildirim@eng.bau.edu.tr',
    '  Email: zafer.iscan@eng.bau.edu.tr',
    '  Email: seref.kalem@eng.bau.edu.tr',
    '  Email: saeid.karamzadeh@eng.bau.edu.tr',
    '  Email: cavitfatih.kucuktezcan@eng.bau.edu.tr',
  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 5645',
    'Phone No: +90 212 381 0892',
    'Phone No: +90 212 381 0875',
    'Phone No: +90 212 381 0000',
    'Phone No: +90 212 381 0891',
    'Phone No: +90 212 381 5650',
    'Phone No: +90 212 381 05 55',
    'Phone No: +90 212 381 05 49',
    'Phone No: +90 212 381 5702',
  ];
  List<String> officeno = <String>[
    'Office No: D415',
    'Office No: D530',
    'Office No: D510',
    'Office No: D108',
    'Office No: D438',
    'Office No: D522',
    'Office No: D307',
    'Office No: D307',
    'Office No: D522',
  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/recepdimitrov/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/alkansoysal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/andrewjohnbeddall/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/merveilaycelikkaya/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/mustafaerenyildirim/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/zaferiscan/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/serefkalem/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/saeidkaramzadeh/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/fatihkucuktezcan/tr/images/Bitmap.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[0]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[1]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[1],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[1],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[1],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[2]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[2],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 23,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[2],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[2],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[3]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[3],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[3],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[3],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[4]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[4],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[4],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[4],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[5]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[5],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[5],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[5],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[6]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[6],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[6],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[6],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[7]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[7],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[7],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[7],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagename[8]),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        namesbody[8],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Lecturer[0],
                        style: TextStyle(
                          fontFamily: 'Architects Daughter',
                          color: Colors.blue,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          mails[0],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          phoneno[8],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          officeno[8],
                          style: TextStyle(
                            fontFamily: 'Architects Daughter',
                            color: Colors.blue,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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

class CivilEng extends StatelessWidget {
  CivilEng({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Prof. & Department Chair',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Lütfi ARDA',
    'Serhan KIRLANGIÇ',
    'Cem YENİDOĞAN',
    'İrem ŞANAL',
    'Masoud NEGİN',
  ];
  List<String> mails = <String>[
    '  Email: lutfi.arda@eng.bau.edu.tr',
    '  Email: serhan.kirlangic@eng.bau.edu.tr',
    '  Email: cem.yenidogan@eng.bau.edu.tr',
    '  Email: irem.sanal@eng.bau.edu.tr',
    '  Email: masoud.negin@eng.bau.edu.tr',
  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0558',
    'Phone No: +90 212 381 5699',
    'Phone No: +90 212 381 0588',
    'Phone No: +90 212 381 5675',
    'Phone No: +90 212 381 5668',
  ];
  List<String> officeno = <String>[
    'Office No: D313',
    'Office No: D401',
    'Office No: D404',
    'Office No: D214',
    'Office No: D415',
  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/lutfiarda/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/serhankirlangic/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cemyenidogan/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/iremsanal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/masoudnegin/tr/images/Bitmap.jpg',

  ];

  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class Mechatronics extends StatelessWidget {
  Mechatronics({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Assoc. Prof. & (Department Chair)',
    'Prof. ',
    'Assoc. Prof. ',
    'Teaching Assist. ',
    'Assoc. Prof. ',
  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Mehmet Berke GÜR',
    'Lütfi ARDA',
    'Ozan AKDOĞAN',
    'Sevgi CANPOLAT',
    'Armağan Fatih KARAMANLI',
  ];
  List<String> mails = <String>[
    '  Email: berke.gur@eng.bau.edu.tr',
    '  Email: lutfi.arda@eng.bau.edu.tr',
    '  Email: ozan.akdogan@eng.bau.edu.tr',
    '  Email: sevgi.canpolat@eng.bau.edu.tr',
    '  Email: armaganfatih.karamanli@eng.bau.edu.tr',
  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0556',
    'Phone No: +90 212 381 0558',
    'Phone No: +90 212 381 5681',
    'Phone No: +90 212 381 5660',
    'Phone No: +90 212 381 5713',
  ];
  List<String> officeno = <String>[
    'Office No: D527',
    'Office No: D313',
    'Office No: D530',
    'Office No: TBA',
    'Office No: D531',
  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/mehmetberkegur/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/lutfiarda/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/ozanakdogan/tr/images/Bitmap.jpg',
    'https://cdn.bau.edu.tr/staff/926.jpg',
    'https://akademik.bahcesehir.edu.tr/web/armaganfatihkaramanli/tr/images/Bitmap.jpg',

  ];
  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class MBG extends StatelessWidget {
  MBG({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Gülay BULUT',
    'Cemalettin BEKPEN',
    'Emine KANDEMİŞ',
    'Ömer Lütfi UYANIK',
    'Elif Eren',

  ];
  List<String> mails = <String>[
    '  Email: gulay.bulut@eng.bau.edu.tr',
    '  Email: cemalettin.bekpen  eng.bau.edu.tr',
    '  Email: emine.kandemis@eng.bau.edu.tr',
    '  Email: omer.uyanik@eng.bau.edu.tr',
    '  Email: elif.eren@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0540',
    'Phone No: +90 212 381 0000',
    'Phone No: +90 212 381 0840',
    'Phone No: +90 212 381 0544',
    'Phone No: +90 212 381 5706',


  ];
  List<String> officeno = <String>[
    'Office No: D310',
    'Office No: D526',
    'Office No: D314',
    'Office No: D438',
    'Office No: D319',


  ];
  List<String> imagename = <String>[
    'https://cdn.bau.edu.tr/staff/895.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cemalettinbekpen/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/eminekandemis/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/omerlutfiuyanik/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/eliferen/tr/images/Bitmap.jpg',


  ];

  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class Math extends StatelessWidget {
  Math({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Assoc. Prof. & (Department Chair)',
    'Teaching Assist. ',
    'Assoc. Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Süreyya ÖZÖĞÜR AKYÜZ',
    'Duygu ÜÇÜNÇÜ',
    'Maksat ASHYRALIYEV',
    'Lavdie RADA',
    'Doğan AKCAN',

  ];
  List<String> mails = <String>[
    '  Email: sureyya.akyuz@eng.bau.edu.tr',
    '  Email: duygu.ucuncu@eng.bau.edu.tr',
    '  Email: maksat.ashyralyyev@eng.bau.edu.tr',
    '  Email: lavdie.rada@eng.bau.edu.tr',
    '  Email: dogan.akcan@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0534',
    'Phone No: +90 212 381 0586',
    'Phone No: +90 212 381 0567',
    'Phone No: +90 212 381 0582',
    'Phone No: +90 212 381 0583',


  ];
  List<String> officeno = <String>[
    'Office No: D309',
    'Office No: D412',
    'Office No: D311',
    'Office No: D310',
    'Office No: D108',


  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/sureyyaakyuz/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/duyguucuncu/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/maksatashyraliyev/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/lavdieradaulgen/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/doganakcan/tr/images/Bitmap.jpg',


  ];


  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class Energy extends StatelessWidget {
  Energy({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Assist Prof. & (Department Chair)',
    'Assoc. Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Gürkan SOYKAN',
    'Canan ACAR',
    'İrem FIRTINA',
    'Mehmet Turgay PAMUK',
    'Nezihe YILDIRAN',

  ];
  List<String> mails = <String>[
    '  Email: gurkan.soykan@eng.bau.edu.tr',
    '  Email: canan.acar@eng.bau.edu.tr',
    '  Email: irem.firtina@eng.bau.edu.tr',
    '  Email: mehmetturgay.pamuk@eng.bau.edu.tr',
    '  Email: nezihe.kucukyildiran@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 5672',
    'Phone No: +90 212 381 0887',
    'Phone No: +90 212 381 0857',
    'Phone No: +90 212 381 0573',
    'Phone No: +90 212 381 5657',


  ];
  List<String> officeno = <String>[
    'Office No: D516',
    'Office No: D437',
    'Office No: D439',
    'Office No: D529',
    'Office No: D532',


  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/gurkansoykan/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cananacar/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/iremfirtinaertis/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/mehmetturgaypamuk/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/neziheyildiran/tr/images/Bitmap.jpg',


  ];


  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class Software extends StatelessWidget {
  Software({Key key}) : super(key: key);


  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Mehmet Alper TUNGA',
    'Pınar BÖLÜK',
    'Serkan AYVAZ',
    'Yücel Batu SALMAN',
    'Tamer UÇAR',

  ];
  List<String> mails = <String>[
    '  Email: alper.tunga@eng.bau.edu.tr',
    '  Email: pinar.sarisaray@eng.bau.edu.tr',
    '  Email: serkan.ayvaz@eng.bau.edu.tr',
    '  Email: batu.salman@eng.bau.edu.tr',
    '  Email:tamer.ucar@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0562',
    'Phone No: +90 212 381 0579',
    'Phone No: +90 212 381 0886',
    'Phone No: +90 212 381 5690',
    'Phone No: +90 212 381 0575',


  ];
  List<String> officeno = <String>[
    'Office No: D529',
    'Office No: D528',
    'Office No: D521',
    'Office No: D216',
    'Office No: D532',


  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/mehmetalpertunga/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/pinarsarisarayboluk/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/serkanayvaz/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/yucelbatusalman/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/tamerucar/tr/images/Bitmap.jpg',


  ];

  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class Industrial extends StatelessWidget {
  Industrial({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Prof. ',
    'Prof. ',
    'Assoc. Prof. ',
    'Instructor',


  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Gül Tekin TEMUR',
    'Mustafa ÖZBAYRAK',
    'Ahmet BEŞKESE',
    'Tankut ATAN',
    'Özlem KANGA',

  ];
  List<String> mails = <String>[
    '  Email: gul.temuren@g.bau.edu.tr',
    '  Email: mustafa.ozbayrak@eng.bau.edu.tr',
    '  Email: ahmet.beskese@eng.bau.edu.tr',
    '  Email: sabritankut.atan@eng.bau.edu.tr',
    '  Email: ozlem.kanga@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0841',
    'Phone No: +90 212 381 5703',
    'Phone No: +90 212 381 0132',
    'Phone No: +90 212 381 5647',
    'Phone No: +90 212 381 0552',


  ];
  List<String> officeno = <String>[
    'Office No: D420',
    'Office No: D403',
    'Office No: TBA',
    'Office No: D420',
    'Office No: D528',


  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/gultemur/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/ahmetbeskese/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/mustafaozbayrak/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/sabritankutatan/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/ozlemkanga/tr/images/Bitmap.jpg',


  ];
  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class Management extends StatelessWidget {
  Management({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Yaman Ömer ERZURUMLU',
    'Alper CAMCI',
    'Başak AKDEMİR',
    'Selçuk TUZCUOĞLU',
    'Didem YILDIZ',

  ];
  List<String> mails = <String>[
    '  Email: yamanomer.erzurumlu@eng.bau.edu.tr',
    '  Email: alper.camci@eng.bau.edu.tr',
    '  Email: basak.akdemir@eng.bau.edu.tr',
    '  Email: selcuk.tuzcuoglu@bau.edu.tr',
    '  Email: didem.arslanbas@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0853',
    'Phone No: +90 212 381 5692',
    'Phone No: +90 212 381 0896',
    'Phone No: +90 212 381 0514',
    'Phone No: +90 212 381 5806',


  ];
  List<String> officeno = <String>[
    'Office No: D419',
    'Office No: D440',
    'Office No: D511',
    'Office No: D433',
    'Office No: D436',


  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/yamanomererzurumlu/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/alpercamci/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/basakakdemir/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/kazimselcuktuzcuoglu/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/didemyildiz/tr/images/Bitmap.jpg',


  ];

  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class Biomed extends StatelessWidget {
  Biomed({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Assist Prof. & (Department Chair)',
    'Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist. Prof. ',



  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Hakan SOLMAZ',
    'Yekta ÜLGEN',
    'Ayşe Sena SARP',
    'Pelin ERKOÇ',
    'Burcu TUNÇ ÇAMLIBEL',

  ];
  List<String> mails = <String>[
    '  Email: hakan.solmaz@eng.bau.edu.tr',
    '  Email: aliyekta.ulgen@eng.bau.edu.tr',
    '  Email: aysesena.sarp@eng.bau.edu.tr',
    '  Email: pelin.erkoc@eng.bau.edu.tr',
    '  Email: burcu.tunc@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 5673',
    'Phone No: +90 212 381 5693',
    'Phone No: +90 212 381 0598',
    'Phone No: +90 212 381 5665',
    'Phone No: +90 212 381 5694',


  ];
  List<String> officeno = <String>[
    'Office No: D314',
    'Office No: D411',
    'Office No: TBA',
    'Office No: D405',
    'Office No: D415',


  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/hakansolmaz/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/aliyektaulgen/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/aysesenasarp/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/pelinerkoc/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/burcutunccamlibel/tr/images/Bitmap.jpg',


  ];
  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

class AI extends StatelessWidget {
  AI({Key key}) : super(key: key);

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Prof. (Adjunct)',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist. Prof. ',
    'Assist Prof. ',



  ];
// ignore: non_constant_identifier_names
  List<String> namesbody = <String>[
    'Nafiz ARICA',
    'Fatoş YARMAN VURAL',
    'Övgü ÖZTÜRK',
    'Emel DEMİRCAN',
    'Serkan AYVAZ',
    'Tamer UÇAR',

  ];
  List<String> mails = <String>[
    '  Email: nafiz.arica@eng.bau.edu.tr',
    '  Email:  TBW',
    '  Email: ovgu.ozturk@eng.bau.edu.tr',
    '  Email: emel.demircan@eng.bau.edu.tr',
    '  Email: serkan.ayvaz@eng.bau.edu.tr',
    '  Email: tamer.ucar@eng.bau.edu.tr',

  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 5800',
    'Phone No: +90 212 381 0000',
    'Phone No: +90 212 381 5688',
    'Phone No: +90 212 381 0553',
    'Phone No: +90 212 381 0886',
    'Phone No: +90 212 381 0575',


  ];
  List<String> officeno = <String>[
    'Office No:  D515',
    'Office No:  TBA',
    'Office No:  D309',
    'Office No:  TBA',
    'Office No:  D521',
    'Office No:  D532',


  ];
  List<String> imagename = <String>[
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://cdn.bau.edu.tr/staff/2270.jpeg',
    'https://akademik.bahcesehir.edu.tr/web/ovguozturkergun/tr/images/Bitmap.jpg',
    'https://cdn.bau.edu.tr/staff/1260.jpeg',
    'https://akademik.bahcesehir.edu.tr/web/serkanayvaz/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/tamerucar/tr/images/Bitmap.jpg',


  ];

  Card buildKey1(
      {String name,
        String name2,
        String photo,
        int number,
        String phone,
        String office,
        String email}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Architects Daughter',
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.blue,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    email,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    phone,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    office,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Colors.blue,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          buildKey1(
              name: namesbody[0],
              name2: Lecturer[0],
              photo: imagename[0],
              number: 1,
              phone: phoneno[0],
              office: officeno[0],
              email: mails[0]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[1],
              name2: Lecturer[1],
              photo: imagename[1],
              number: 1,
              phone: phoneno[1],
              office: officeno[1],
              email: mails[1]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[2],
              name2: Lecturer[2],
              photo: imagename[2],
              number: 1,
              phone: phoneno[2],
              office: officeno[2],
              email: mails[2]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[3],
              name2: Lecturer[3],
              photo: imagename[3],
              number: 1,
              phone: phoneno[3],
              office: officeno[3],
              email: mails[3]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[4],
              name2: Lecturer[4],
              photo: imagename[4],
              number: 1,
              phone: phoneno[4],
              office: officeno[4],
              email: mails[4]),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}


