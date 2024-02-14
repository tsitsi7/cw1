import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstApp(),
    );
  }
}

class MyFirstApp extends StatefulWidget {
  @override
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  bool picture1 = true;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Homepage',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            picture1
                ? Image.asset(
              'images/image1.png',
              width: 250,
              height: 250,
            )
                : Image.asset(
              'images/image2.png',
              width: 250,
              height: 250,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Toggle between the two images when the button is pressed
                setState(() {
                  picture1 = !picture1;

                });
              },
              child: Text('Toggle Image'),
            ),

            SizedBox(height: 5),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Toggle between the two images when the button is pressed
          setState(() {
            counter++; // Incrementing the counter as in the previous example
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0), // Adjust the padding as needed
          child: Text(
            'Increment',
            style: TextStyle(fontSize: 10.0), // Adjust the font size as needed
          ),
        ),

      ),
    );
  }
}