import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GUESS_NUMBER',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            border: Border.all(width: 10.0, color: Colors.green.shade50),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 75.0, ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/guess_logo.png', height: 100.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Text('GUESS', style: TextStyle(fontSize: 60.0, color: Colors.blue.shade200), ),
                            Text('THE NUMBER', style: TextStyle(fontSize: 30.0, color: Colors.blue.shade200), ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: TextField(),
                  height: 100.0,
                  width: 600,
                ),
                SizedBox(
                  height: 60.0,
                  width: 120.0,
                  child: ElevatedButton(
                    child: Text('Guess', style: TextStyle(fontSize: 30.0, color: Colors.black)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}