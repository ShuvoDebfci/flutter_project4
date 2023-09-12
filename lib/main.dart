import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                  onLongPress: () {
                    print('email not sent');
                  },
                  onPressed: () {
                    print('Email has been sent');
                  },
                  child: Text('Send Email')),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white70,
                    foregroundColor: Colors.blue,
                  ),
                  onLongPress: () {
                    print('Email not resend');
                  },
                  onPressed: () {
                    print('Email has been resend');
                  },
                  child: Text('Resend')),
              IconButton(
                  onPressed: () {
                    print('Pressed on Icon button');
                  },
                  icon: Icon(Icons.add)),
              OutlinedButton(
                  onLongPress: () {
                    print('long pressed on outlined button');
                  },
                  onPressed: () {
                    print('Checked on Outlined button');
                  },
                  child: Text('Outlined Button')),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.purple,
                  filled: true,
                  suffixIcon: Icon(Icons.email),
                ),
              )
            ],
          ),
        ));
  }
}
