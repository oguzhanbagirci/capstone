






import 'dart:convert';


import 'dart:ui';


import 'package:dartis/dartis.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainscreen.dart';



import 'dart:io' show exit, ProcessSignal;

import 'package:dartis/dartis.dart' as redis show PubSub;


void main() async {


  runApp(MyApp());

}


void handleEvent(MessageEvent<String, String> event) => print(event.message);




class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter project',
        theme: ThemeData(
          primarySwatch:  Colors.blue,
        ),
        home: MainScreen()
    );

  }
}





//final broker =
//   await redis.PubSub.connect<String, String>('redis://192.168.0.14:6379');
//   print('connected');
//
//   // Ctrl+C handler.
//   ProcessSignal.sigint.watch().listen((_) async {
//     await broker.disconnect();
//     exit(0);
//   });
//
//   // Outputs the data received from the server.
//   broker.stream.listen(print, onError: print, onDone: () => exit(0));
//
//   // Subscribes the client to some channels.
//   broker.psubscribe(pattern: 'commands');


//  RedisConnection conn = new RedisConnection();
//   conn.connect('192.168.0.14',6379).then((Command command){
//
//   PubSub pubsub = new PubSub(command);
//   pubsub.getStream().listen((message) {
//   print('message : $message');
//   print('function works');
//
//
//
//   });
//
//
//
//   });