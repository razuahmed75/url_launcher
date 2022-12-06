// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //===========launch url===============================
  /* launch url 
  final Uri _url = Uri.parse("https://pub.dev/");
  Future _launchUrl(Uri url) async {
    if (await launchUrl(url)) {
      throw "Could not launch $url";
      
    }
  }
*/
//======================launch email in 2 ways======================================
  /*  launch email 
  final Uri _email = Uri(
    scheme: 'mailto',
    path: 'razuahmed8641@gmail.com',
  );

  Future _launhEmail(Uri email) async {
    if (await launchUrl(email)) {
      throw "Could not launch $email";
    }
  }
*/
  final Uri _email = Uri.parse("mailto: razuahmed8641@gmail.com");
  Future _launchEmail(email) async {
    if (await launchUrl(email)) {
    } else {
      throw "Could not launch $email";
    }
  }

//============launch phone in 2 ways===================================================
  /*
  final Uri _phone = Uri(
    scheme: 'tel',
    path: '01784426620',
  );
  Future _launchCall(call) async {
    if (await launchUrl(call)) {
      throw "Could not launch $call";
    }
  }
  */
  // final Uri _phone = Uri.parse("tel: 01706084790");
  // Future _launchCall(call) async {
  //   if (await launchUrl(call)) {
  //     throw "Could not launch $call";
  //   }
  // }

//===============================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontFamily: "Kalam",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _launchEmail(_email);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
