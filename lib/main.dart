import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('ExVenger',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white
        ),
      ),
      gradientBackground: new LinearGradient(colors: [Colors.red, Colors.redAccent], begin: Alignment.topLeft, end: Alignment.bottomRight),
      loaderColor: Colors.white,
      image: Image.asset('assets/evenger.png'),
      photoSize: 80,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stark Industries", style: TextStyle(color: Colors.white),),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        ),
      body: new Center(
        child: new Text("I Love You 3000",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0
        ),),

      ),
    );
  }
}