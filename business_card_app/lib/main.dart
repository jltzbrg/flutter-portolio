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
      title: 'Business Card',
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
          alignment: Alignment.topCenter,
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
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade600,
        borderRadius: BorderRadius.circular(14.5),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 3),
              blurRadius: 0.5,
              spreadRadius: 0.5)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Julio Litzenberg',
            style: TextStyle(
                fontSize: 20.9,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text(
                'Twitter: @jltzbrg',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              )
            ],
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
        border: Border.all(color: Colors.lightBlueAccent.shade100, width: 1.2),
        image: DecorationImage(
            image: NetworkImage('https://picsum.photos/300/300'),
            fit: BoxFit.cover),
      ),
    );
  }
}
