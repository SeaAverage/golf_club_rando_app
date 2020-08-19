import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new golfClubApp()));
}
 // MaterialApp(
   // home: golfClubApp(),
  // ignore: unnecessary_statements


class golfClubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Golf Club Randomizer'),
          backgroundColor: Colors.green.shade900,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/course2.png'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
            child: clubRandomizer(),
        ),
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
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: (){
                setState(() {
                  clubPick = list1[_random.nextInt(list1.length)];
                });
              },
              //padding: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.fromLTRB(-16.0, 0.0, -16.0, 0.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
                padding: const EdgeInsets.all(10.0),
                child:
                const Text('Tee Box', style: TextStyle(fontSize: 38)),
              ),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  clubPick = list2[_random.nextInt(list2.length)];
                });
              },
                //padding: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.fromLTRB(-16.0, 0.0, -16.0, 0.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                  const Text('Fairway', style: TextStyle(fontSize: 38)),
                ),
              ),
          ],
        ),
        Divider(
          color: Colors.grey.shade50,
          height: 25,
          indent: 20,
          endIndent: 20,
          thickness: 2,
        ),
        Card(
          color: Colors.grey.shade100,
          margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 85.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 34,
                  maxHeight: 34,
                ),
                child: Image.asset('images/golfClub.png', fit: BoxFit.cover),
              ),
              title: Center(
                child: Text(clubPick,
                style: TextStyle(
                  fontSize: 28.0,
                ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: (){
            setState(() {
              list1.remove(clubPick);
              list2.remove(clubPick);
              clubPick = list1[_random.nextInt(list1.length)];
            });
          },
          //textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.red
            ),
            padding: const EdgeInsets.all(10.0),
            child:
            const Text('Remove Club', style: TextStyle(fontSize: 20)),
          ),
        ),
      ],
    );
  }
}
