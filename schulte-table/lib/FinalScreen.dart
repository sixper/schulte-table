import 'package:flutter/material.dart';
import 'package:project_onur_erman/ReactionGameScreen.dart';
import 'package:project_onur_erman/ClassicLightGameScreen.dart';
import 'package:project_onur_erman/ClassicLightReverseGameScreen.dart';
import 'package:project_onur_erman/ClassicOriginalGameScreen.dart';
import 'package:project_onur_erman/ClassicOriginalReverseGameScreen.dart';
import 'package:project_onur_erman/MemoryGameScreen.dart';
import 'package:graphic/graphic.dart' as graphic;

List<double> timeStamps = new List.filled(50, 0, growable: true);

class ReactionFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ReactionFinalScreen());
  }
}

class ReactionFinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mode: react",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Mode: Reaction",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Relax and Concentrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Focus in the center box of the table.Try to see whole table.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Click on the red box as fast as you can.",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReactionGame()));
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 150,
                      width: 200,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 250,
                  child: graphic.Chart(
                    data: [
                      {'number': '1', 'timeElapsed': timeStamps.elementAt(0)},
                      {'number': '2', 'timeElapsed': timeStamps.elementAt(1)},
                      {'number': '3', 'timeElapsed': timeStamps.elementAt(2)},
                      {'number': '4', 'timeElapsed': timeStamps.elementAt(3)},
                      {'number': '5', 'timeElapsed': timeStamps.elementAt(4)},
                      {'number': '6', 'timeElapsed': timeStamps.elementAt(5)},
                      {'number': '7', 'timeElapsed': timeStamps.elementAt(6)},
                      {'number': '8', 'timeElapsed': timeStamps.elementAt(7)},
                      {'number': '9', 'timeElapsed': timeStamps.elementAt(8)},
                      {'number': '10', 'timeElapsed': timeStamps.elementAt(9)},
                      {'number': '11', 'timeElapsed': timeStamps.elementAt(10)},
                      {'number': '12', 'timeElapsed': timeStamps.elementAt(11)},
                      {'number': '13', 'timeElapsed': timeStamps.elementAt(12)},
                      {'number': '14', 'timeElapsed': timeStamps.elementAt(13)},
                      {'number': '15', 'timeElapsed': timeStamps.elementAt(14)},
                      {'number': '16', 'timeElapsed': timeStamps.elementAt(15)},
                      {'number': '17', 'timeElapsed': timeStamps.elementAt(16)},
                      {'number': '18', 'timeElapsed': timeStamps.elementAt(17)},
                      {'number': '19', 'timeElapsed': timeStamps.elementAt(18)},
                      {'number': '20', 'timeElapsed': timeStamps.elementAt(19)},
                      {'number': '21', 'timeElapsed': timeStamps.elementAt(20)},
                      {'number': '22', 'timeElapsed': timeStamps.elementAt(21)},
                      {'number': '23', 'timeElapsed': timeStamps.elementAt(22)},
                      {'number': '24', 'timeElapsed': timeStamps.elementAt(23)},
                      {'number': '25', 'timeElapsed': timeStamps.elementAt(24)},
                    ],
                    scales: {
                      'number': graphic.CatScale(
                        accessor: (map) => map['number'] as String,
                      ),
                      'timeElapsed': graphic.LinearScale(
                        accessor: (map) => map['timeElapsed'] as num,
                        nice: true,
                      )
                    },
                    geoms: [
                      graphic.IntervalGeom(
                        position:
                        graphic.PositionAttr(field: 'number*timeElapsed'),
                        shape: graphic.ShapeAttr(values: [
                          graphic.RectShape(radius: Radius.circular(5))
                        ]),
                      )
                    ],
                    axes: {
                      'number': graphic.Defaults.horizontalAxis,
                      'timeElapsed': graphic.Defaults.verticalAxis,
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ClassicLightFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ClassicLightFinalScreen());
  }
}

class ClassicLightFinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mode: light",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Mode: Classic Light",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Relax and Concentrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Focus in the center box of the table.Try to see whole table.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Click on the numbers in ascending order from 1 to 25.",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicLightGame()));
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 150,
                      width: 200,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 250,
                  child: graphic.Chart(
                    data: [
                      {'number': '1', 'timeElapsed': timeStamps.elementAt(0)},
                      {'number': '2', 'timeElapsed': timeStamps.elementAt(1)},
                      {'number': '3', 'timeElapsed': timeStamps.elementAt(2)},
                      {'number': '4', 'timeElapsed': timeStamps.elementAt(3)},
                      {'number': '5', 'timeElapsed': timeStamps.elementAt(4)},
                      {'number': '6', 'timeElapsed': timeStamps.elementAt(5)},
                      {'number': '7', 'timeElapsed': timeStamps.elementAt(6)},
                      {'number': '8', 'timeElapsed': timeStamps.elementAt(7)},
                      {'number': '9', 'timeElapsed': timeStamps.elementAt(8)},
                      {'number': '10', 'timeElapsed': timeStamps.elementAt(9)},
                      {'number': '11', 'timeElapsed': timeStamps.elementAt(10)},
                      {'number': '12', 'timeElapsed': timeStamps.elementAt(11)},
                      {'number': '13', 'timeElapsed': timeStamps.elementAt(12)},
                      {'number': '14', 'timeElapsed': timeStamps.elementAt(13)},
                      {'number': '15', 'timeElapsed': timeStamps.elementAt(14)},
                      {'number': '16', 'timeElapsed': timeStamps.elementAt(15)},
                      {'number': '17', 'timeElapsed': timeStamps.elementAt(16)},
                      {'number': '18', 'timeElapsed': timeStamps.elementAt(17)},
                      {'number': '19', 'timeElapsed': timeStamps.elementAt(18)},
                      {'number': '20', 'timeElapsed': timeStamps.elementAt(19)},
                      {'number': '21', 'timeElapsed': timeStamps.elementAt(20)},
                      {'number': '22', 'timeElapsed': timeStamps.elementAt(21)},
                      {'number': '23', 'timeElapsed': timeStamps.elementAt(22)},
                      {'number': '24', 'timeElapsed': timeStamps.elementAt(23)},
                      {'number': '25', 'timeElapsed': timeStamps.elementAt(24)},
                    ],
                    scales: {
                      'number': graphic.CatScale(
                        accessor: (map) => map['number'] as String,
                      ),
                      'timeElapsed': graphic.LinearScale(
                        accessor: (map) => map['timeElapsed'] as num,
                        nice: true,
                      )
                    },
                    geoms: [
                      graphic.IntervalGeom(
                        position:
                        graphic.PositionAttr(field: 'number*timeElapsed'),
                        shape: graphic.ShapeAttr(values: [
                          graphic.RectShape(radius: Radius.circular(5))
                        ]),
                      )
                    ],
                    axes: {
                      'number': graphic.Defaults.horizontalAxis,
                      'timeElapsed': graphic.Defaults.verticalAxis,
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ClassicLightReverseFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ClassicLightReverseFinalScreen());
  }
}

class ClassicLightReverseFinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mode: light_r",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Mode: Classic Light Reverse",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Relax and Concentrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Focus in the center box of the table.Try to see whole table.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Click on the numbers in descending order from 25 to 1.",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicLightReverseGame()));
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 150,
                      width: 200,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 250,
                  child: graphic.Chart(
                    data: [
                      {'number': '1', 'timeElapsed': timeStamps.elementAt(24)},
                      {'number': '2', 'timeElapsed': timeStamps.elementAt(23)},
                      {'number': '3', 'timeElapsed': timeStamps.elementAt(22)},
                      {'number': '4', 'timeElapsed': timeStamps.elementAt(21)},
                      {'number': '5', 'timeElapsed': timeStamps.elementAt(20)},
                      {'number': '6', 'timeElapsed': timeStamps.elementAt(19)},
                      {'number': '7', 'timeElapsed': timeStamps.elementAt(18)},
                      {'number': '8', 'timeElapsed': timeStamps.elementAt(17)},
                      {'number': '9', 'timeElapsed': timeStamps.elementAt(16)},
                      {'number': '10', 'timeElapsed': timeStamps.elementAt(16)},
                      {'number': '11', 'timeElapsed': timeStamps.elementAt(14)},
                      {'number': '12', 'timeElapsed': timeStamps.elementAt(13)},
                      {'number': '13', 'timeElapsed': timeStamps.elementAt(12)},
                      {'number': '14', 'timeElapsed': timeStamps.elementAt(11)},
                      {'number': '15', 'timeElapsed': timeStamps.elementAt(10)},
                      {'number': '16', 'timeElapsed': timeStamps.elementAt(9)},
                      {'number': '17', 'timeElapsed': timeStamps.elementAt(8)},
                      {'number': '18', 'timeElapsed': timeStamps.elementAt(7)},
                      {'number': '19', 'timeElapsed': timeStamps.elementAt(7)},
                      {'number': '20', 'timeElapsed': timeStamps.elementAt(6)},
                      {'number': '21', 'timeElapsed': timeStamps.elementAt(4)},
                      {'number': '22', 'timeElapsed': timeStamps.elementAt(3)},
                      {'number': '23', 'timeElapsed': timeStamps.elementAt(2)},
                      {'number': '24', 'timeElapsed': timeStamps.elementAt(1)},
                      {'number': '25', 'timeElapsed': timeStamps.elementAt(0)},
                    ],
                    scales: {
                      'number': graphic.CatScale(
                        accessor: (map) => map['number'] as String,
                      ),
                      'timeElapsed': graphic.LinearScale(
                        accessor: (map) => map['timeElapsed'] as num,
                        nice: true,
                      )
                    },
                    geoms: [
                      graphic.IntervalGeom(
                        position:
                        graphic.PositionAttr(field: 'number*timeElapsed'),
                        shape: graphic.ShapeAttr(values: [
                          graphic.RectShape(radius: Radius.circular(5))
                        ]),
                      )
                    ],
                    axes: {
                      'number': graphic.Defaults.horizontalAxis,
                      'timeElapsed': graphic.Defaults.verticalAxis,
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ClassicOriginalFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ClassicOriginalFinalScreen());
  }
}

class ClassicOriginalFinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mode: orig",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Mode: Classic ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Relax and Concentrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Focus in the center box of the table.Try to see whole table.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Click on the numbers in ascending order from 1 to 25.",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicOriginalGame()));
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 150,
                      width: 200,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 250,
                  child: graphic.Chart(
                    data: [
                      {'number': '1', 'timeElapsed': timeStamps.elementAt(0)},
                      {'number': '2', 'timeElapsed': timeStamps.elementAt(1)},
                      {'number': '3', 'timeElapsed': timeStamps.elementAt(2)},
                      {'number': '4', 'timeElapsed': timeStamps.elementAt(3)},
                      {'number': '5', 'timeElapsed': timeStamps.elementAt(4)},
                      {'number': '6', 'timeElapsed': timeStamps.elementAt(5)},
                      {'number': '7', 'timeElapsed': timeStamps.elementAt(6)},
                      {'number': '8', 'timeElapsed': timeStamps.elementAt(7)},
                      {'number': '9', 'timeElapsed': timeStamps.elementAt(8)},
                      {'number': '10', 'timeElapsed': timeStamps.elementAt(9)},
                      {'number': '11', 'timeElapsed': timeStamps.elementAt(10)},
                      {'number': '12', 'timeElapsed': timeStamps.elementAt(11)},
                      {'number': '13', 'timeElapsed': timeStamps.elementAt(12)},
                      {'number': '14', 'timeElapsed': timeStamps.elementAt(13)},
                      {'number': '15', 'timeElapsed': timeStamps.elementAt(14)},
                      {'number': '16', 'timeElapsed': timeStamps.elementAt(15)},
                      {'number': '17', 'timeElapsed': timeStamps.elementAt(16)},
                      {'number': '18', 'timeElapsed': timeStamps.elementAt(17)},
                      {'number': '19', 'timeElapsed': timeStamps.elementAt(18)},
                      {'number': '20', 'timeElapsed': timeStamps.elementAt(19)},
                      {'number': '21', 'timeElapsed': timeStamps.elementAt(20)},
                      {'number': '22', 'timeElapsed': timeStamps.elementAt(21)},
                      {'number': '23', 'timeElapsed': timeStamps.elementAt(22)},
                      {'number': '24', 'timeElapsed': timeStamps.elementAt(23)},
                      {'number': '25', 'timeElapsed': timeStamps.elementAt(24)},
                    ],
                    scales: {
                      'number': graphic.CatScale(
                        accessor: (map) => map['number'] as String,
                      ),
                      'timeElapsed': graphic.LinearScale(
                        accessor: (map) => map['timeElapsed'] as num,
                        nice: true,
                      )
                    },
                    geoms: [
                      graphic.IntervalGeom(
                        position:
                        graphic.PositionAttr(field: 'number*timeElapsed'),
                        shape: graphic.ShapeAttr(values: [
                          graphic.RectShape(radius: Radius.circular(5))
                        ]),
                      )
                    ],
                    axes: {
                      'number': graphic.Defaults.horizontalAxis,
                      'timeElapsed': graphic.Defaults.verticalAxis,
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ClassicOriginalReverseFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ClassicOriginalReverseFinalScreen());
  }
}

class ClassicOriginalReverseFinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mode: orig_r",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Mode: Classic  Reverse",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Relax and Concentrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Focus in the center box of the table.Try to see whole table.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Click on the numbers in descending order from 25 to 1.",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ClassicOriginalReverseGame()));
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 150,
                      width: 200,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 250,
                  child: graphic.Chart(
                    data: [
                      {'number': '1', 'timeElapsed': timeStamps.elementAt(0)},
                      {'number': '2', 'timeElapsed': timeStamps.elementAt(1)},
                      {'number': '3', 'timeElapsed': timeStamps.elementAt(2)},
                      {'number': '4', 'timeElapsed': timeStamps.elementAt(3)},
                      {'number': '5', 'timeElapsed': timeStamps.elementAt(4)},
                      {'number': '6', 'timeElapsed': timeStamps.elementAt(5)},
                      {'number': '7', 'timeElapsed': timeStamps.elementAt(6)},
                      {'number': '8', 'timeElapsed': timeStamps.elementAt(7)},
                      {'number': '9', 'timeElapsed': timeStamps.elementAt(8)},
                      {'number': '10', 'timeElapsed': timeStamps.elementAt(9)},
                      {'number': '11', 'timeElapsed': timeStamps.elementAt(10)},
                      {'number': '12', 'timeElapsed': timeStamps.elementAt(11)},
                      {'number': '13', 'timeElapsed': timeStamps.elementAt(12)},
                      {'number': '14', 'timeElapsed': timeStamps.elementAt(13)},
                      {'number': '15', 'timeElapsed': timeStamps.elementAt(14)},
                      {'number': '16', 'timeElapsed': timeStamps.elementAt(15)},
                      {'number': '17', 'timeElapsed': timeStamps.elementAt(16)},
                      {'number': '18', 'timeElapsed': timeStamps.elementAt(17)},
                      {'number': '19', 'timeElapsed': timeStamps.elementAt(18)},
                      {'number': '20', 'timeElapsed': timeStamps.elementAt(19)},
                      {'number': '21', 'timeElapsed': timeStamps.elementAt(20)},
                      {'number': '22', 'timeElapsed': timeStamps.elementAt(21)},
                      {'number': '23', 'timeElapsed': timeStamps.elementAt(22)},
                      {'number': '24', 'timeElapsed': timeStamps.elementAt(23)},
                      {'number': '25', 'timeElapsed': timeStamps.elementAt(24)},
                    ],
                    scales: {
                      'number': graphic.CatScale(
                        accessor: (map) => map['number'] as String,
                      ),
                      'timeElapsed': graphic.LinearScale(
                        accessor: (map) => map['timeElapsed'] as num,
                        nice: true,
                      )
                    },
                    geoms: [
                      graphic.IntervalGeom(
                        position:
                        graphic.PositionAttr(field: 'number*timeElapsed'),
                        shape: graphic.ShapeAttr(values: [
                          graphic.RectShape(radius: Radius.circular(5))
                        ]),
                      )
                    ],
                    axes: {
                      'number': graphic.Defaults.horizontalAxis,
                      'timeElapsed': graphic.Defaults.verticalAxis,
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MemoryFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MemoryFinalScreen());
  }
}

class MemoryFinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mode: memory",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Mode: Memory",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "Relax and Concentrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 411,
                  child: Center(
                    child: Text(
                      "After start you will have 3 seconds to remember location of as many numbers as you can and after that"
                          "numbers will dissapear, click on the boxes in ascending order from 1 to 25.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 411,
                  child: Center(
                    child: Text(
                      "If you click wrong box, number will appear for 3 seconds.",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MemoryGame()));
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 150,
                      width: 200,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 250,
                  child: graphic.Chart(
                    data: [
                      {'number': '1', 'timeElapsed': timeStamps.elementAt(0)},
                      {'number': '2', 'timeElapsed': timeStamps.elementAt(1)},
                      {'number': '3', 'timeElapsed': timeStamps.elementAt(2)},
                      {'number': '4', 'timeElapsed': timeStamps.elementAt(3)},
                      {'number': '5', 'timeElapsed': timeStamps.elementAt(4)},
                      {'number': '6', 'timeElapsed': timeStamps.elementAt(5)},
                      {'number': '7', 'timeElapsed': timeStamps.elementAt(6)},
                      {'number': '8', 'timeElapsed': timeStamps.elementAt(7)},
                      {'number': '9', 'timeElapsed': timeStamps.elementAt(8)},
                      {'number': '10', 'timeElapsed': timeStamps.elementAt(9)},
                      {'number': '11', 'timeElapsed': timeStamps.elementAt(10)},
                      {'number': '12', 'timeElapsed': timeStamps.elementAt(11)},
                      {'number': '13', 'timeElapsed': timeStamps.elementAt(12)},
                      {'number': '14', 'timeElapsed': timeStamps.elementAt(13)},
                      {'number': '15', 'timeElapsed': timeStamps.elementAt(14)},
                      {'number': '16', 'timeElapsed': timeStamps.elementAt(15)},
                      {'number': '17', 'timeElapsed': timeStamps.elementAt(16)},
                      {'number': '18', 'timeElapsed': timeStamps.elementAt(17)},
                      {'number': '19', 'timeElapsed': timeStamps.elementAt(18)},
                      {'number': '20', 'timeElapsed': timeStamps.elementAt(19)},
                      {'number': '21', 'timeElapsed': timeStamps.elementAt(20)},
                      {'number': '22', 'timeElapsed': timeStamps.elementAt(21)},
                      {'number': '23', 'timeElapsed': timeStamps.elementAt(22)},
                      {'number': '24', 'timeElapsed': timeStamps.elementAt(23)},
                      {'number': '25', 'timeElapsed': timeStamps.elementAt(24)},
                    ],
                    scales: {
                      'number': graphic.CatScale(
                        accessor: (map) => map['number'] as String,
                      ),
                      'timeElapsed': graphic.LinearScale(
                        accessor: (map) => map['timeElapsed'] as num,
                        nice: true,
                      )
                    },
                    geoms: [
                      graphic.IntervalGeom(
                        position:
                        graphic.PositionAttr(field: 'number*timeElapsed'),
                        shape: graphic.ShapeAttr(values: [
                          graphic.RectShape(radius: Radius.circular(5))
                        ]),
                      )
                    ],
                    axes: {
                      'number': graphic.Defaults.horizontalAxis,
                      'timeElapsed': graphic.Defaults.verticalAxis,
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
