import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'package:flutter/cupertino.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Welcome to the BAU D building\n'
                  '       How can I help you?',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Gloria Hallelujah',
                    color: Colors.cyan.shade600,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Majors()));

                          print('button1 pressed');
                        },
                        child: Image.asset(
                          'images/academicunits5.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    child: Card(
                      //color: Colors.black87,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InfoPage()));
                          print('button1 pressed');
                        },
                        child: Image.asset(
                          'images/classrooms.png',
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.black87,
                      //elevation: 5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
