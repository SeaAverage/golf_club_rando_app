import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: golfClubApp(),
  ),
);

class golfClubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Golf Club Randomizer'),
        backgroundColor: Colors.green.shade900,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/course.png'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
          child: clubRandomizer(),
      ),
    );
  }
}

class clubRandomizer extends StatefulWidget {
  @override
  _clubRandomizerState createState() => _clubRandomizerState();
}
class _clubRandomizerState extends State<clubRandomizer> {
  var list1 = ['Driver', '3 Wood', '5 Wood', '4 Hybrid', '3 Iron', '4 Iron', '5 Iron', '6 Iron', '7 Iron', '8 Iron', '9 Iron', 'PW', 'GW/SW', '56° Wedge', '60° Wedge'];
  var list2 = ['3 Wood', '5 Wood', '4 Hybrid', '3 Iron', '4 Iron', '5 Iron', '6 Iron', '7 Iron', '8 Iron', '9 Iron', 'PW', 'GW/SW', '56° Wedge', '60° Wedge'];
  var _random = new Random();
  var clubPick = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: (){
                setState(() {
                  clubPick = list1[_random.nextInt(list1.length)];
                  print(list1);
                  print(list2);
                });
              },
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Tee Box',
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //child: Image.asset('images/andyO.png'),
            ),
            FlatButton(
              onPressed: (){
                setState(() {
                  clubPick = list1[_random.nextInt(list1.length)];
                  print(list1);
                  print(list2);
                });
              },
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Fairway',
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //child: Image.asset('images/andyO.png'),
            ),
          ],
        ),
        Card(
          color: Colors.grey.shade100,
          margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 140.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(clubPick,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
        FlatButton(
          onPressed: (){
            setState(() {
              list1.remove(clubPick);
              list2.remove(clubPick);
              clubPick = list1[_random.nextInt(list1.length)];
            });
          },
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 150.0),
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remove Club',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //child: Image.asset('images/andyO.png'),
        ),
      ],
    );
  }
}
