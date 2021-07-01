import 'dart:async';

import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = Question.fromJson({
    "name": "Ash",
    "duration": "3:00",
    "question": "1. What does an HTML tag do?",
    "option": {
      "option_a": "A",
      "option_b": "B",
      "option_c": "C",
      "option_d": "D"
    },
    "answer": "option_a"
  });
  String _value = "";
  String green = "";
  String red = "";

  @override
  Widget build(BuildContext context) {
    print(data.name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff007aa5),
        //title: Center(child: time()),
      ),
      body: SafeArea(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  ListTile(
                      title: Text(
                    data.question,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                  RadioListTile(
                    value: 'option_a',
                    groupValue: _value,
                    title: Text(
                      data.option['option_a'],
                      style: TextStyle(
                        color: green == 'option_a'
                            ? Colors.green
                            : red == 'option_a'
                                ? Colors.red
                                : Colors.black,
                      ),
                    ),
                    onChanged: (val) {
                      // print(data.answer == _value && _value == 'option_a');
                      //print(val.toString());
                      setState(() {
                        setV(val);
                      });
                    },
                    activeColor: green == 'option_a'
                        ? Colors.green
                        : red == 'option_a'
                            ? Colors.red
                            : Colors.black,
                  ),
                  RadioListTile(
                    value: 'option_b',
                    groupValue: _value,
                    title: Text(
                      data.option['option_b'],
                      style: TextStyle(
                        color: green == 'option_b'
                            ? Colors.green
                            : red == 'option_b'
                                ? Colors.red
                                : Colors.black,
                      ),
                    ),
                    onChanged: (val) {
                      // print(data.answer == _value && _value == 'option_a');
                      //print(val.toString());
                      setState(() {
                        setV(val);
                      });
                    },
                    activeColor: green == 'option_b'
                        ? Colors.green
                        : red == 'option_b'
                            ? Colors.red
                            : Colors.black,
                  ),
                  RadioListTile(
                    value: 'option_c',
                    groupValue: _value,
                    title: Text(
                      data.option['option_c'],
                      style: TextStyle(
                        color: green == 'option_c'
                            ? Colors.green
                            : red == 'option_c'
                                ? Colors.red
                                : Colors.black,
                      ),
                    ),
                    onChanged: (val) {
                      // print(data.answer == _value && _value == 'option_a');
                      //print(val.toString());
                      setState(() {
                        setV(val);
                      });
                    },
                    activeColor: green == 'option_c'
                        ? Colors.green
                        : red == 'option_c'
                            ? Colors.red
                            : Colors.black,
                  ),
                  RadioListTile(
                    value: 'option_d',
                    groupValue: _value,
                    title: Text(
                      data.option['option_d'],
                      style: TextStyle(
                        color: green == 'option_d'
                            ? Colors.green
                            : red == 'option_d'
                                ? Colors.red
                                : Colors.black,
                      ),
                    ),
                    onChanged: (val) {
                      // print(data.answer == _value && _value == 'option_a');
                      //print(val.toString());
                      setState(() {
                        setV(val);
                      });
                    },
                    activeColor: green == 'option_d'
                        ? Colors.green
                        : red == 'option_d'
                            ? Colors.red
                            : Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.11,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Previous'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff007aa5)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Next'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff007aa5)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//   setV(val) {
//     // print(data.answer);
//     _value = val.toString();
//     switch (_value) {
//       case 'option_a':
//         if (data.answer == 'option_a') {
//           green = 'option_a';
//           red = '';
//         } else {
//           green = data.answer;
//           red = 'option_a';

//         }
//         break;
//       case 'option_b':
//         if (data.answer == 'option_b') {
//           green = 'option_b';
//           red = '';
//         } else {
//           green = data.answer;
//           red = 'option_b';
//         }
//         break;
//       case 'option_c':
//         if (data.answer == 'option_c') {
//           green = 'option_c';
//           red = '';
//         } else {
//           green = data.answer;
//           red = 'option_c';
//         }
//         break;
//       case 'option_d':
//         if (data.answer == 'option_d') {
//           green = 'option_d';
//           red = '';
//         } else {
//           green = data.answer;
//           red = 'option_d';
//         }
//         break;
//     }
//   }
// }
//   time() {
//     new Timer.periodic(onesc, (Timer t) => print('hi!'));
//   }
// }
  setV(val) {
    // print(data.answer);
    _value = val.toString();
    switch (_value) {
      case 'option_a':
        if (data.answer == 'option_a') {
          green = 'option_a';
          red = '';
        } else {
          green = data.answer;
          red = 'option_a';
        }
        break;
      case 'option_b':
        if (data.answer == 'option_b') {
          green = 'option_b';
          red = '';
          break;
        } else {
          green = data.answer;
          red = 'option_b';
        }
        break;
      case 'option_c':
        if (data.answer == 'option_c') {
          green = 'option_c';
          red = '';
          break;
        } else {
          green = data.answer;
          red = 'option_c';
        }
        break;
      case 'option_d':
        if (data.answer == 'option_d') {
          green = 'option_d';
          red = '';
          break;
        } else {
          green = data.answer;
          red = 'option_d';
        }
        break;
    }
  }
}
