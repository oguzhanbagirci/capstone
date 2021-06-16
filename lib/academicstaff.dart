import 'dart:io';

import 'package:capstonefinal1/academicstaff.dart';
import 'package:capstonefinal1/mainscreen.dart';
import 'package:capstonefinal1/mappage.dart';
import 'package:capstonefinal1/secondscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/getwidget.dart';

import 'dart:ui';

import 'mappage.dart';

import 'package:flutter/widgets.dart';
import 'dart:io' show exit, ProcessSignal;
import 'package:dartis/dartis.dart';

import 'package:dartis/dartis.dart' as redis show PubSub;

class ComputerEng extends StatefulWidget {
  ComputerEng({Key key}) : super(key: key);

  @override
  _ComputerEngState createState() => _ComputerEngState();
}

class _ComputerEngState extends State<ComputerEng> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 90,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                  color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 39,
            ),
           Container(
             width: 320,
             child: Column(
               children: [
                 SizedBox(
                   height: 10,
                 ),
                 Text(
                   name,
                   style: TextStyle(
                     fontFamily: 'Architects Daughter',
                     color: Color(0xFF004c8c),
                     fontSize: 30,
                     letterSpacing: 2,
                     fontWeight: FontWeight.bold,
                   ),
                 ),

                 Text(
                   name2,
                   style: TextStyle(
                     fontFamily: 'Architects Daughter',
                     color: Color(0xFF004c8c),
                     fontSize: 15,
                     letterSpacing: 2,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ],
             ),
           ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> Lecturer = <String>[
    'Assoc. Prof. & Department Chair',
    'Prof.',
    'Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
  ];

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

  List<String> mails = <String>[
    'Email: tevfik.aytekin@eng.bau.edu.tr',
    'Email: nafiz.arica@eng.bau.edu.tr',
    'Email: cagatay.catal@eng.bau.edu.tr',
    'Email: okan.sakar@eng.bau.edu.tr',
    'Email: tarkan.aydin@eng.bau.edu.tr',
    'Email: ovgu.ozturk@eng.bau.edu.tr',
    'Email: selcuk.baktir@eng.bau.edu.tr',
    'Email: ece.gelalsoyak@eng.bau.edu.tr',
    'Email: gorkem.kar@eng.bau.edu.tr',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SizedBox(
            height: 50,

          ),
          Text(
            'Computer Engineering\n'
                '   '
                'Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 10,
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
          buildKey1(
              name: namesbody[5],
              name2: Lecturer[5],
              photo: imagename[5],
              number: 1,
              phone: phoneno[5],
              office: officeno[5],
              email: mails[5]),
          SizedBox(
            height: 10,
          ),


          buildKey1(
              name: namesbody[7],
              name2: Lecturer[7],
              photo: imagename[7],
              number: 1,
              phone: phoneno[7],
              office: officeno[7],
              email: mails[7]),



        ],
      ),
    );
  }
}

class Electric extends StatefulWidget {
  Electric({Key key}) : super(key: key);

  @override
  _ElectricState createState() => _ElectricState();
}

class _ElectricState extends State<Electric> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 90,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 39,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 25,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
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
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 50,

          ),
          Text(
            'Electric&Electronic Engineering\n'
                '   '
                '     Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 10,
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
              name: namesbody[6],
              name2: Lecturer[6],
              photo: imagename[6],
              number: 1,
              phone: phoneno[6],
              office: officeno[6],
              email: mails[6]),
          SizedBox(
            height: 10,
          ),
          buildKey1(
              name: namesbody[5],
              name2: Lecturer[5],
              photo: imagename[5],
              number: 1,
              phone: phoneno[5],
              office: officeno[5],
              email: mails[5]),
          SizedBox(
            height: 10,
          ),


          buildKey1(
              name: namesbody[7],
              name2: Lecturer[7],
              photo: imagename[7],
              number: 1,
              phone: phoneno[7],
              office: officeno[7],
              email: mails[7]),



        ],
      ),
    );
  }
}

class CivilEng extends StatefulWidget {
  CivilEng({Key key}) : super(key: key);

  @override
  _CivilEngState createState() => _CivilEngState();
}

class _CivilEngState extends State<CivilEng> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Prof. & Department Chair',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
  ];

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 90,

        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 39,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 25,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 100,

          ),
          Text(
            '    Civil Engineering\n'
                '   '
                'Academic Staff',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class Mechatronics extends StatefulWidget {
  Mechatronics({Key key}) : super(key: key);

  @override
  _MechatronicsState createState() => _MechatronicsState();
}

class _MechatronicsState extends State<Mechatronics> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Assoc. Prof. & Department Chair',
    'Prof. ',
    'Assoc. Prof. ',
    'Teaching Assist. ',
    'Assoc. Prof. ',
  ];

  List<String> namesbody = <String>[
    'Mehmet Berke GÜR',
    'Lütfi ARDA',
    'Ozan AKDOĞAN',
    'Sevgi CANPOLAT',
    'Fatih KARAMANLI',
  ];

  List<String> mails = <String>[
    'Email: berke.gur@eng.bau.edu.tr',
    'Email: lutfi.arda@eng.bau.edu.tr',
    'Email: ozan.akdogan@eng.bau.edu.tr',
    'Email: sevgi.canpolat@eng.bau.edu.tr',
    'Email: fatih.karamanli@eng.bau.edu.tr',
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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 41,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 30,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
              height: 100,

            ),
            Text(
              'Mechatronics Engineering\n'
                  '   '
                  '  Academic Staff',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF01579b),
              ),
            ),
            SizedBox(
              height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class MBG extends StatefulWidget {
  MBG({Key key}) : super(key: key);

  @override
  _MBGState createState() => _MBGState();
}

class _MBGState extends State<MBG> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Prof. & Department Chair',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 90,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 41,
            ),
            Container(
              width: 290,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 28,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            'Molecular Biology&Genetics\n'
                '   '
                '    Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class Math extends StatefulWidget {
  Math({Key key}) : super(key: key);

  @override
  _MathState createState() => _MathState();
}

class _MathState extends State<Math> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Assoc. Prof. & (Department Chair)',
    'Teaching Assist. ',
    'Assoc. Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];

  List<String> namesbody = <String>[
    'Süreyya AKYÜZ',
    'Duygu ÜÇÜNÇÜ',
    'Maksat ASHYRALIYEV',
    'Lavdie RADA',
    'Doğan AKCAN',

  ];

  List<String> mails = <String>[
    'Email: sureyya.akyuz@eng.bau.edu.tr',
    'Email: duygu.ucuncu@eng.bau.edu.tr',
    'Email: maksat.ashyralyyev@eng.bau.edu.tr',
    'Email: lavdie.rada@eng.bau.edu.tr',
    'Email: dogan.akcan@eng.bau.edu.tr',

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 40,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 25,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            '     Mathematics\n'
                '   '
                'Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),

    );
  }
}

class Energy extends StatefulWidget {
  Energy({Key key}) : super(key: key);

  @override
  _EnergyState createState() => _EnergyState();
}

class _EnergyState extends State<Energy> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Assist Prof. & (Department Chair)',
    'Assoc. Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];

  List<String> namesbody = <String>[
    'Gürkan SOYKAN',
    'Canan ACAR',
    'İrem FIRTINA',
    'M.Turgay PAMUK',
    'Nezihe YILDIRAN',

  ];

  List<String> mails = <String>[
    'Email: gurkan.soykan@eng.bau.edu.tr',
    'Email: canan.acar@eng.bau.edu.tr',
    'Email: irem.firtina@eng.bau.edu.tr',
    'Email: mehmet.pamuk@eng.bau.edu.tr',
    'Email: nezihe.kucukyildiran@eng.bau.edu.tr',

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 40,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 30,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            'Energy Systems Engineering\n'
                '   '
                '     Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class Software extends StatefulWidget {
  Software({Key key}) : super(key: key);

  @override
  _SoftwareState createState() => _SoftwareState();
}

class _SoftwareState extends State<Software> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 40,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 28,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            'Software Engineering\n'
                '   '
                'Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class Industrial extends StatefulWidget {
  Industrial({Key key}) : super(key: key);

  @override
  _IndustrialState createState() => _IndustrialState();
}

class _IndustrialState extends State<Industrial> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Prof. ',
    'Prof. ',
    'Assoc. Prof. ',
    'Instructor',


  ];

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 40,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 28,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            'Industrial Engineering\n'
                '   '
                'Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class Management extends StatefulWidget {
  Management({Key key}) : super(key: key);

  @override
  _ManagementState createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',


  ];

  List<String> namesbody = <String>[
    'Y. Ömer ERZURUMLU',
    'Alper CAMCI',
    'Başak AKDEMİR',
    'Selçuk TUZCUOĞLU',
    'Didem YILDIZ',

  ];

  List<String> mails = <String>[
    '  Email: yomer.erzurumlu@eng.bau.edu.tr',
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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 40,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 26,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            'Management Engineering\n'
                '   '
                'Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class Biomed extends StatefulWidget {
  Biomed({Key key}) : super(key: key);

  @override
  _BiomedState createState() => _BiomedState();
}

class _BiomedState extends State<Biomed> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Assist Prof. & (Department Chair)',
    'Prof. ',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist. Prof. ',



  ];

  List<String> namesbody = <String>[
    'Hakan SOLMAZ',
    'Yekta ÜLGEN',
    'Ayşe Sena SARP',
    'Pelin ERKOÇ',
    'Burcu TUNÇ ',

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 40,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 28,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            'Biomedical Engineering\n'
                '   '
                'Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}

class AI extends StatefulWidget {
  AI({Key key}) : super(key: key);

  @override
  _AIState createState() => _AIState();
}

class _AIState extends State<AI> {
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
        if (event.message == 'return') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Majors()));
          killer.punsubscribe();
        } else if (event.message == 'end') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
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

  List<String> Lecturer = <String>[
    'Prof. & (Department Chair)',
    'Prof. (Adjunct)',
    'Assist Prof. ',
    'Assist Prof. ',
    'Assist. Prof. ',
    'Assist Prof. ',



  ];

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
            color: Color(0xFF4ba3c7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 100,
        width: 800,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Architects Daughter',
                color: Color(0xFF004c8c),
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xFF004c8c),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(photo),
              radius: 40,
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 28,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    name2,
                    style: TextStyle(
                      fontFamily: 'Architects Daughter',
                      color: Color(0xFF004c8c),
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      phone,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      office,
                      style: TextStyle(
                        fontFamily: 'Architects Daughter',
                        color: Color(0xFF004c8c),
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
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
            height: 110,

          ),
          Text(
            'Artificial Intelligence Engineering\n'
                '   '
                '       Academic Staff',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Architects Daughter',
              color: Color(0xFF01579b),
            ),
          ),
          SizedBox(
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
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
            height: 15,
          ),

        ],
      ),
    );
  }
}


