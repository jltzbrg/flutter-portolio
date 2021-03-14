import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  // Card
  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Julio Litzenberg'),
          Text('Flutter Developer'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.person_outline), Text('Twitter: @jltzbrg')],
          )
        ],
      ),
    );
  }

  // Avatar
  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: DecorationImage(
            image: NetworkImage('https://picsum.photos/300/300'),
            fit: BoxFit.cover),
      ),
    );
  }
}
