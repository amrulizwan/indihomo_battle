import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mataram_film/main.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 4);
    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const MyHomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Image.asset(
              "assets/splash.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/splash.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ])),
    );
  }
}
