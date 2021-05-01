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




class HomePage extends StatelessWidget {
  // ignore: missing_return, non_constant_identifier_names
List<String> Lecturer = <String>[
  'tevfik aytekin',
  'oguzhan bagirci',
  'onur vasfi',
  'alperen arslan',
  'onat can donmez',




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
                itemCount: 5,
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
                    backgroundImage: AssetImage('images/tevfikaytekin.png'),
                  ),
                  Text(
                    'Tevfik Aytekin',
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
                            'Email: tevfik.aytekin@eng.bau.edu.tr',
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
                            'Phone No : +90 212 381 0580',
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
                            'Office No : D529',
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
//SizedBox(
//                     height: 20,
//                   ),
//                   Image(
//                     image: AssetImage('images/pic-6.png'),
//                   )

//class Search extends SearchDelegate {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return <Widget>[
//       IconButton(
//         icon: Icon(Icons.close),
//         onPressed: () {
//           query = "";
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
//
//   String selectedResult = "";
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(selectedResult),
//       ),
//     );
//   }
//
//   final List<String> listExample;
//   Search(this.listExample);
//
//   List<String> recentList = ["Text 4", "Text 3"];
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> suggestionList = [];
//     query.isEmpty
//         ? suggestionList = recentList //In the true case
//         : suggestionList.addAll(listExample.where(
//       // In the false case
//           (element) => element.contains(query),
//     ));
//
//     return ListView.builder(
//       itemCount: suggestionList.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(
//             suggestionList[index],
//           ),
//           leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
//           onTap: (){
//             selectedResult = suggestionList[index];
//             showResults(context);
//           },
//         );
//       },
//     );
//   }}

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
