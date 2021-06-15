import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secondscreen.dart';

import 'dart:ui';
import 'package:auto_layout/auto_layout.dart';


// ignore: must_be_immutable
class Bautto extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Jobs = <String>[
    '-Director',
    '-Business Dev. Spac. ',
    '-FSMH Licensing Assi. Spec. ',
    '-National Project Dev. Spec. ',
    '-Project Finance Spec. ',

  ];
// ignore: non_constant_identifier_names
  List<String> workername = <String>[
    'Nil GİRGİN KALIP',
    'Seda SATIR',
    'Erdem AVCILAR',
    'Özge Selik MİNİÇ',
    'Ayşe ELARSLAN',

  ];
  List<String> workermails = <String>[
    '  Email: nil.girgin@tto.bau.edu.tr',
    '  Email: seda.satir@tto.bau.edu.tr',
    '  Email: erdem.avcilar@tto.bau.edu.tr',
    '  Email: ozge.selik@tto.bau.edu.tr',
    '  Email: ayse.elarslan@tto.bau.edu.tr',

  ];
  List<String> workerphoneno = <String>[
    'Phone No: +90 (212) 381 09 72',
    'Phone No: +90 (212) 381 08 99',
    'Phone No: +90 (212) 381 08 28',
    'Phone No: +90 (212) 381 09 01',
    'Phone No: +90 (212) 381 08 37',

  ];
  List<String> officeplace = <String>[
    'Office : Technology Transfer Office',
    'Office : Technology Transfer Office',
    'Office : Technology Transfer Office',
    'Office : Technology Transfer Office',
    'Office : Technology Transfer Office',

  ];
  List<String> workerimage = <String>[
    'https://akademik.bahcesehir.edu.tr/web/tevfikaytekin/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cemalokansakar/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/tarkanaydin/tr/images/Bitmap.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("BAUTTO Unit",
              style: TextStyle(
                fontFamily: 'Indie Flower',
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
                      context, MaterialPageRoute(builder: (context) => AdminisUnit()));
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
                        workername[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Jobs[index],
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
                    /*  CircleAvatar(
                      radius: 130,
                      backgroundImage: NetworkImage(workerimage[index]),
                    ),*/
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      workername[index],
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
                              workermails[index],
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
                              workerphoneno[index],
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
                              'Fax No : ',
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
                              officeplace[index],
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
class Bausem extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Jobs = <String>[
    '-Director',
    '-Unit Manager ',
    '-Training coordinator',
    '-Corporate Commu. Coo. ',
    '-Training coordinator ',
    '-Secretary ',
    '-Training coordinator ',
    '-Corporate Commu. Assi. ',
  ];
// ignore: non_constant_identifier_names
  List<String> workername = <String>[
    'F. Elif Çetin',
    'Ebubekir Çoltu',
    'Özlem Coşkun',
    'Zeynep Gengönül',
    'Seda Birkan',
    'Nihal Yüksel Bayburt',
    'İpek Keklik',
    'Kolet Bozoğlanoğlu',

  ];
  List<String> workermails = <String>[
    '  Email: elif.cetin@cec.bau.edu.tr',
    '  Email: ebubekir.coltu@cec.bau.edu.tr',
    '  Email: ozlem.coskun@cec.bau.edu.tr',
    '  Email: zeynep.gengonul@cec.bau.edu.tr',
    '  Email: seda.birkan@idea.bau.edu.tr',
    '  Email: nihal.yuksel@cec.bau.edu.tr',
    '  Email: ipek.keklik@cec.bau.edu.tr',
    '  Email: kolet.bozoglanoglu@cec.bau.edu.tr',

  ];
  List<String> workerphoneno = <String>[
    'Phone No: +90 (212) 381 59 36',
    'Phone No: +90 (212) 381 59 35',
    'Phone No: +90 (212) 381 59 34',
    'Phone No: +90 (212) 381 59 41',
    'Phone No: +90 (212) 381 59 37',
    'Phone No: +90 (212) 381 59 36',
    'Phone No: +90 (212) 241 83 55',
    'Phone No: +90 (212) 241 83 55',

  ];
  List<String> officeplace = <String>[
    'Office : BAUSEM Office',
    'Office : BAUSEM Office',
    'Office : BAUSEM Office',
    'Office : BAUSEM Office',
    'Office : BAUSEM Office',
    'Office : BAUSEM Office',
    'Office : BAUSEM Office',
    'Office : BAUSEM Office',

  ];
  List<String> workerimage = <String>[
    'https://akademik.bahcesehir.edu.tr/web/tevfikaytekin/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cemalokansakar/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/tarkanaydin/tr/images/Bitmap.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("BAUSEM Unit",
              style: TextStyle(
                fontFamily: 'Indie Flower',
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
                      context, MaterialPageRoute(builder: (context) => AdminisUnit()));
                },
                icon: Icon(Icons.logout),
              )
            ],
            menuBuilder: (BuildContext context, BuildBody buildBody) {

              return ListView.builder(

                  itemExtent: 90,

                  itemCount: 8,

                  itemBuilder: (context, index) {
                    return ListTile(






                      onTap: () {
                        buildBody(
                            index); //must invoke the method to build body content
                      },

                      title: Text(
                        workername[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Jobs[index],
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
                    /* CircleAvatar(
                      radius: 130,
                      backgroundImage: NetworkImage(workerimage[index]),
                    ),*/
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      workername[index],
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
                              workermails[index],
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
                              workerphoneno[index],
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
                              'Fax No : ',
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
                              officeplace[index],
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

class InternationalEx extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Jobs = <String>[
    '-Erasmus+Institutional Coo.',
    '-Erasmus Students Coo. ',
    '-Erasmus+ Incoming Students Coo. ',

  ];
// ignore: non_constant_identifier_names
  List<String> workername = <String>[
    'Özge Güner',
    'Ayşin Durgut',
    'Gülsüm Güzel Önal',

  ];
  List<String> workermails = <String>[
    '  Email: ozge.guner@int.bau.edu.tr',
    '  Email: aysin.durgut@int.bau.edu.tr',
    '  Email: gulsum.guzel@int.bau.edu.tr',

  ];
  List<String> workerphoneno = <String>[
    'Phone No: ',
    'Phone No: +90 (212) 381 59 44',
    'Phone No: +90 (212) 381 59 29',


  ];
  List<String> officeplace = <String>[
    'Office : BAU EXCHANGE OFFICE',
    'Office : BAU EXCHANGE OFFICE',
    'Office : BAU EXCHANGE OFFICE',

  ];
  List<String> workerimage = <String>[
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("International Ex. Office Unit",
              style: TextStyle(
                fontFamily: 'Indie Flower',
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
                      context, MaterialPageRoute(builder: (context) => AdminisUnit()));
                },
                icon: Icon(Icons.logout),
              )
            ],
            menuBuilder: (BuildContext context, BuildBody buildBody) {

              return ListView.builder(

                  itemExtent: 90,

                  itemCount: 3,

                  itemBuilder: (context, index) {
                    return ListTile(






                      onTap: () {
                        buildBody(
                            index); //must invoke the method to build body content
                      },

                      title: Text(
                        workername[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Jobs[index],
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
                    /* CircleAvatar(
                      radius: 130,
                      backgroundImage: NetworkImage(workerimage[index]),
                    ),*/
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      workername[index],
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
                              workermails[index],
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
                              workerphoneno[index],
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
                              'Fax No : ',
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
                              officeplace[index],
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

class Coop extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Jobs = <String>[
    '-Director',
    '-Director Assi. (Academic)',
    '-Director Assi. (Corp. Relat.) ',
    '-Director Assi. (Selecting & Placing)',
    '-Director Assi. (Corp. Relat.)',
    '-Director Assi. (Selecting & Placing)',
    '-Director Assi. (Selecting & Placing)',
    '-Career Counselor ',

  ];
// ignore: non_constant_identifier_names
  List<String> workername = <String>[
    'M. Bahri Toper',
    'Ayça Muş',
    'Elif Varan',
    'Gamze Kurt Dutan',
    'Lilyan Ataoğlu',
    'Aysu Pehlivan',
    'Beril Çağlayan',
    'Cansu Mat',


  ];
  List<String> workermails = <String>[
    '  Email: bahri.toper@coop.bau.edu.tr',
    '  Email: ayca.mus@coop.bau.edu.tr',
    '  Email: elif.varan@coop.bau.edu.tr',
    '  Email: gamze.kurtdutan@coop.bau.edu.tr',
    '  Email: lilyan.ataoglu@coop.bau.edu.tr',
    '  Email: aysu.pehlivan@coop.bau.edu.tr',
    '  Email: beril.caglayan@coop.bau.edu.tr',
    '  Email: cansu.mat@coop.bau.edu.tr',


  ];
  List<String> workerphoneno = <String>[
    'Phone No: +90 (212) 381 59 23',
    'Phone No: +90 (212) 381 59 16',
    'Phone No: +90 (212) 381 59 17',
    'Phone No: +90 (212) 381 59 18',
    'Phone No: +90 (212) 381 59 21',
    'Phone No: +90 (212) 381 59 19',
    'Phone No: +90 (212) 381 53 78',
    'Phone No: +90 (212) 381 59 22',


  ];
  List<String> officeplace = <String>[
    'Office : CO-OP OFFICE',
    'Office : CO-OP OFFICE',
    'Office : CO-OP OFFICE',
    'Office : CO-OP OFFICE',
    'Office : CO-OP OFFICE',
    'Office : CO-OP OFFICE',
    'Office : CO-OP OFFICE',
    'Office : CO-OP OFFICE',


  ];
  List<String> workerimage = <String>[
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("Co-op Center",
              style: TextStyle(
                fontFamily: 'Indie Flower',
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
                      context, MaterialPageRoute(builder: (context) => AdminisUnit()));
                },
                icon: Icon(Icons.logout),
              )
            ],
            menuBuilder: (BuildContext context, BuildBody buildBody) {

              return ListView.builder(

                  itemExtent: 90,

                  itemCount: 8,

                  itemBuilder: (context, index) {
                    return ListTile(






                      onTap: () {
                        buildBody(
                            index); //must invoke the method to build body content
                      },

                      title: Text(
                        workername[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Jobs[index],
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
                    /* CircleAvatar(
                      radius: 130,
                      backgroundImage: NetworkImage(workerimage[index]),
                    ),*/
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      workername[index],
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
                              workermails[index],
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
                              workerphoneno[index],
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
                              'Fax No : ',
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
                              officeplace[index],
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

class Affairs extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Jobs = <String>[
    '-Associate Director',
    '-Student Affairs Office Assistant',
    '-Student Affairs Office Assistant',
    '-Student Affairs Office Assistant',
    '-Student Affairs Office Assistant',
    '-Student Affairs Office Assistant',

  ];
// ignore: non_constant_identifier_names
  List<String> workername = <String>[
    'Serhat UZUN',
    'Erdinç ÇAM',
    'Zeynep COŞKUNER AŞIKKUTLU',
    'Güler MARANGOZ ',
    'Elif BAYŞU',
    'Onurhan KARATAŞ',



  ];
  List<String> workermails = <String>[
    '  Email: serhat.uzun@sfl.bau.edu.tr',
    '  Email: erdinc.cam@sa.bau.edu.tr',
    '  Email: zeynep.coskuner@sfl.bau.edu.tr',
    '  Email: guler.marangoz@sfl.bau.edu.tr',
    '  Email: elif.baysu@sfl.bau.edu.tr',
    '  Email: onurhan.karatas@sfl.bau.edu.tr ',



  ];
  List<String> workerphoneno = <String>[
    'Phone No: +90 (212) 381 07 60 ',
    'Phone No: +90 (212) 381 07 04',
    'Phone No: +90 (212) 381 06 12',
    'Phone No: +90 (212) 381 06 95',
    'Phone No: +90 (212) 381 06 80',
    'Phone No: +90 (212) 381 06 22',



  ];
  List<String> officeplace = <String>[
    'Office : STUDENTS AFFAIRS OFFICE',
    'Office : STUDENTS AFFAIRS OFFICE',
    'Office : STUDENTS AFFAIRS OFFICE',
    'Office : STUDENTS AFFAIRS OFFICE',
    'Office : STUDENTS AFFAIRS OFFICE',
    'Office : STUDENTS AFFAIRS OFFICE',


  ];
  List<String> workerimage = <String>[
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("Co-op Center",
              style: TextStyle(
                fontFamily: 'Indie Flower',
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
                      context, MaterialPageRoute(builder: (context) => AdminisUnit()));
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
                        workername[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Jobs[index],
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
                    /* CircleAvatar(
                      radius: 130,
                      backgroundImage: NetworkImage(workerimage[index]),
                    ),*/
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      workername[index],
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
                              workermails[index],
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
                              workerphoneno[index],
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
                              'Fax No : ',
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
                              officeplace[index],
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

class Library extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Jobs = <String>[
    '-Counselor',
    '-Director',
    '-Technical Services Manager',
    '-User Services Manager',
    '-Electronic Resources',
    '-Cataloging and Periodicals',
    '-Lending Officer',
    '-Lending Officer',
    '-Shift Lending',
    '-Lending Officer',
    '-Lending Officer',
    '-Shift Lending',
    '-Medical Faculty Librarian',
    '-Medical Park Lending off.',
    '-North Campus Unit Manager',
    '-Shift Lending (North)',
    '-Kemerburgaz Library Supervisor',

  ];
// ignore: non_constant_identifier_names
  List<String> workername = <String>[
    'Kenan Erzurum',
    'Arzu Kuliğ	',
    'Pelin Şen',
    'Yiğit Can Dursuner',
    'Erkin Ata',
    'Mehmet Said Demir',
    'Şule Gülenç',
    'Emine Barlas',
    'Erdem Karaaslan',
    'Emrullah Koşan',
    'Yusuf Başkan',
    'Hatice Ekmekçi',
    'Özen Yılmaz',
    'Hazal Kaptanoğlu',
    'Serpil Özgen',
    'Kıvanç Aydoğan',
    'Mustafa Furkan Ulusoy',



  ];
  List<String> workermails = <String>[
    '  Email: kenan.erzurum@lib.bau.edu.tr',
    '  Email: arzu.kulig@lib.bau.edu.tr',
    '  Email: pelin.canli@lib.bau.edu.tr',
    '  Email: yigitcan.dursuner@lib.bau.edu.tr',
    '  Email: erkin.ata@lib.bau.edu.tr',
    '  Email: mehmet.demir@lib.bau.edu.tr',
    '  Email: sule.gulenc@lib.bau.edu.tr',
    '  Email: emine.barlas@lib.bau.edu.tr',
    '  Email: erdem.karaaslan@lib.bau.edu.tr',
    '  Email: emrullah.kosan@lib.bau.edu.tr',
    '  Email: yusuf.başkan@lib.bau.edu.tr',
    '  Email: hatice.ekmekci@lib.bau.edu.tr',
    '  Email: ozen.kaya@lib.bau.edu.tr',
    '  Email: hazal.kaptanoglu@lib.bau.edu.tr',
    '  Email: serpil.ozgen@lib.bau.edu.tr',
    '  Email: kivanc.aydogan@lib.bau.edu.tr',
    '  Email: mustafafurkan.ulusoy@lib.bau.edu.tr',



  ];
  List<String> workerphoneno = <String>[
    'Phone No: - ',
    'Phone No: +90 (212) 381 58 81',
    'Phone No: +90 (212) 381 58 87',
    'Phone No: +90 (212) 381 02 19',
    'Phone No: +90 (212) 381 02 17',
    'Phone No: +90 (212) 381 58 88',
    'Phone No: +90 (212) 381 02 23',
    'Phone No: +90 (212) 381 02 20',
    'Phone No: +90 (212) 381 02 20',
    'Phone No: +90 (212) 381 02 21',
    'Phone No: +90 (212) 381 02 21',
    'Phone No: +90 (212) 381 02 20',
    'Phone No: +90 (212) 579 81 60',
    'Phone No: +90 (212) 579 81 61',
    'Phone No: +90 (212) 381 58 86',
    'Phone No: +90 (212) 381 58 86',
    'Phone No: - ',



  ];
  List<String> officeplace = <String>[
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',
    'Office : LIBRARY',



  ];
  List<String> workerimage = <String>[
    'https://akademik.bahcesehir.edu.tr/web/nafizarica/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',
    'https://akademik.bahcesehir.edu.tr/web/cagataycatal/tr/images/Bitmap.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("Co-op Center",
              style: TextStyle(
                fontFamily: 'Indie Flower',
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
                      context, MaterialPageRoute(builder: (context) => AdminisUnit()));
                },
                icon: Icon(Icons.logout),
              )
            ],
            menuBuilder: (BuildContext context, BuildBody buildBody) {

              return ListView.builder(

                  itemExtent: 90,

                  itemCount: 17,

                  itemBuilder: (context, index) {
                    return ListTile(






                      onTap: () {
                        buildBody(
                            index); //must invoke the method to build body content
                      },

                      title: Text(
                        workername[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Jobs[index],
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
                    /* CircleAvatar(
                      radius: 130,
                      backgroundImage: NetworkImage(workerimage[index]),
                    ),*/
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      workername[index],
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
                              workermails[index],
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
                              workerphoneno[index],
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
                              'Fax No : ',
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
                              officeplace[index],
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
class Alumni extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
  List<String> Jobs = <String>[
    '-Coordinator',
    '-Vice Coordinator',
    '-Specialist ',

  ];
// ignore: non_constant_identifier_names
  List<String> workername = <String>[
    'Melih Elidüzgün',
    'Gülşah Erginses Çakmak',
    'İpek Naz Çenberli',


  ];
  List<String> workermails = <String>[
    '  Email: melih.eliduzgun@rc.bau.edu.tr',
    '  Email: gulsah.erginses@rc.bau.edu.tr',
    '  Email: ipeknaz.cenberli@rc.bau.edu.tr',

  ];
  List<String> workerphoneno = <String>[
    'Phone No: +90 (212) 381 52 28',
    'Phone No: +90 (212) 381 52 23',
    'Phone No: +90 (212) 381 52 17',

  ];
  List<String> officeplace = <String>[
    'Office : Bau Alumni Center',
    'Office : Bau Alumni Center',
    'Office : Bau Alumni Center',

  ];
  List<String> workerimage = <String>[

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AudoLayoutBuilder(


            title: Center(child: Text("BAU Alumni Center",
              style: TextStyle(
                fontFamily: 'Indie Flower',
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
                      context, MaterialPageRoute(builder: (context) => AdminisUnit()));
                },
                icon: Icon(Icons.logout),
              )
            ],
            menuBuilder: (BuildContext context, BuildBody buildBody) {

              return ListView.builder(

                  itemExtent: 90,

                  itemCount: 3,

                  itemBuilder: (context, index) {
                    return ListTile(






                      onTap: () {
                        buildBody(
                            index); //must invoke the method to build body content
                      },

                      title: Text(
                        workername[index],
                        style: TextStyle(
                          fontFamily: 'PT Serif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                          color: Colors.lightBlue,



                        ),

                      ),
                      subtitle: Text(Jobs[index],
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
                    /* CircleAvatar(
                      radius: 130,
                      backgroundImage: NetworkImage(workerimage[index]),
                    ),*/
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      workername[index],
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
                              workermails[index],
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
                              workerphoneno[index],
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
                              'Fax No : ',
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
                              officeplace[index],
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