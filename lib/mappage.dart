import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';


class MapPage1 extends StatefulWidget {
  @override
  _MapPage1State createState() => _MapPage1State();
}

class _MapPage1State extends State<MapPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ground Floor PLan'),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(
          'images/1.png',
        ),
      ),
    );
  }


}


class MapPage2 extends StatefulWidget {
  @override
  _MapPage2State createState() => _MapPage2State();
}

class _MapPage2State extends State<MapPage2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1. Floor Plan'),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(
          'images/2.png',
        ),
      ),
    );
  }


}
class MapPage3 extends StatefulWidget {
  @override
  _MapPage3State createState() => _MapPage3State();
}

class _MapPage3State extends State<MapPage3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2. Floor Plan'),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(
          'images/3.png',
        ),
      ),
    );
  }


}
class MapPage4 extends StatefulWidget {
  @override
  _MapPage4State createState() => _MapPage4State();
}

class _MapPage4State extends State<MapPage4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3. Floor Plan'),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(
          'images/4.png',
        ),
      ),
    );
  }
}


class MapPage5 extends StatefulWidget {
  @override
  _MapPage5State createState() => _MapPage5State();
}

class _MapPage5State extends State<MapPage5> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4. Plan'),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(
          'images/5.png',
        ),
      ),
    );
  }


}