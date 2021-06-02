import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secondscreen.dart';

import 'dart:ui';
import 'package:auto_layout/auto_layout.dart';


// ignore: must_be_immutable
class ComputerEng extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Lecturer = <String>[
    '-Assoc. Prof. & Department Chair',
    '-Prof.',
    '-Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
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
    '  Email: tevfik.aytekin@eng.bau.edu.tr',
    '  Email: nafiz.arica@eng.bau.edu.tr',
    '  Email: cagatay.catal@eng.bau.edu.tr',
    '  Email: okan.sakar@eng.bau.edu.tr',
    '  Email: tarkan.aydin@eng.bau.edu.tr',
    '  Email: ovgu.ozturk@eng.bau.edu.tr',
    '  Email: selcuk.baktir@eng.bau.edu.tr',
    '  Email: ece.gelalsoyak@eng.bau.edu.tr',
    '  Email: gorkem.kar@eng.bau.edu.tr',
  ];
  List<String> phoneno = <String>[
    'Phone No: +90 212 381 0580',
    'Phone No: +90 212 381 5800',
    'Phone No: +90 212 381 0000',
    'Phone No: +90 212 381 0571',
    'Phone No: +90 212 381 0318',
    'Phone No: +90 212 381 5688',
    'Phone No: +90 212 381 5676',
    'Phone No: +90 212 381 0000',
    'Phone No: +90 212 381 0569',
  ];
  List<String> officeno = <String>[
    'Office No: D529',
    'Office No: D515',
    'Office No: D411',
    'Office No: D413',
    'Office No: D413',
    'Office No: D309',
    'Office No: D519',
    'Office No: D312',
    'Office No: D519',
  ];
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("Computer Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,


              //Shadows Into Light



            ),
            ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Majors()));
                },
                icon: Icon(Icons.logout),
              )
            ],
            menuBuilder: (BuildContext context, BuildBody buildBody) {

              return ListView.builder(

                itemExtent: 90,

                  itemCount: 9,

                  itemBuilder: (context, index) {
                    return ListTile(






                      onTap: () {
                        buildBody(
                            index); //must invoke the method to build body content
                      },

                      title: Text(
                        namesbody[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                      ),
                      leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                      ),


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
                      radius: 130,
                      backgroundImage: NetworkImage(imagename[index]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 30.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 600,
                      child: Divider(
                        color: Colors.black87,


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
                    SizedBox(
                      height: 5,
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
                    SizedBox(
                      height: 5,
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
                              'Fax No: +90 212 381 0550',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
      ),
    );
  }
}
// ignore: must_be_immutable
class Electric extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<String> Lecturer = <String>[
    '-Prof. ',
    '-Assoc. Prof. ',
    '-Assist Prof. ',
    '-Teaching Assist. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Prof. ',
    '-Assoc. Prof. ',
    '-Assist Prof.',
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
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Electiric&Electronic Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 9,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
// ignore: must_be_immutable
class CivilEng extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Prof. & Department Chair',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Civil Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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

// ignore: must_be_immutable
class Mechatronics extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Assoc. Prof. & (Department Chair)',
    '-Prof. ',
    '-Assoc. Prof. ',
    '-Teaching Assist. ',
    '-Assoc. Prof. ',
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Mechatronics Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
// ignore: must_be_immutable
class MBG extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Prof. & (Department Chair)',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Molecular Biology&Genetics Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,


            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
// ignore: must_be_immutable
class Math extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Assoc. Prof. & (Department Chair)',
    '-Teaching Assist. ',
    '-Assoc. Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Mathematics Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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




// ignore: must_be_immutable
class Energy extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Assist Prof. & (Department Chair)',
    '-Assoc. Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Energy Systems Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
// ignore: must_be_immutable
class Software extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Prof. & (Department Chair)',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Software Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
// ignore: must_be_immutable
class Industrial extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Prof. & (Department Chair)',
    '-Prof. ',
    '-Prof. ',
    '-Assoc. Prof. ',
    '-Instructor',


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Industrial Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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

// ignore: must_be_immutable
class Management extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Prof. & (Department Chair)',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Management Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
// ignore: must_be_immutable
class Biomed extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Assist Prof. & (Department Chair)',
    '-Prof. ',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist. Prof. ',



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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("Biomedical Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,



            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 5,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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

class AI extends StatelessWidget {
  List<String> Lecturer = <String>[
    '-Prof. & (Department Chair)',
    '-Prof. (Adjunct)',
    '-Assist Prof. ',
    '-Assist Prof. ',
    '-Assist. Prof. ',
    '-Assist Prof. ',



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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudoLayoutBuilder(


          title: Center(child: Text("AI Engineering Academic Staff",
            style: TextStyle(
              fontFamily: 'Architects Daughter',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              fontSize: 25,


            ),
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Majors()));
              },
              icon: Icon(Icons.logout),
            )
          ],
          menuBuilder: (BuildContext context, BuildBody buildBody) {

            return ListView.builder(

                itemExtent: 90,

                itemCount: 6,

                itemBuilder: (context, index) {
                  return ListTile(






                    onTap: () {
                      buildBody(
                          index); //must invoke the method to build body content
                    },

                    title: Text(
                      namesbody[index],
                      style: TextStyle(
                        fontFamily: 'PT Serif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                        color: Colors.lightBlue,



                      ),

                    ),
                    subtitle: Text(Lecturer[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,


                      ),
                    ),
                    leading: Text('$index',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,

                      ),
                    ),


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
                    radius: 130,
                    backgroundImage: NetworkImage(imagename[index]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    namesbody[index],
                    style: TextStyle(
                      fontFamily: 'PT Serif',
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 600,
                    child: Divider(
                      color: Colors.black87,


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
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
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
                            'Fax No: +90 212 381 0550',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
//bitis



