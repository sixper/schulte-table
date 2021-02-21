import 'package:flutter/material.dart';
import 'package:project_onur_erman/FinalScreen.dart';
import 'dart:math';
import 'dart:core';

class ClassicOriginalGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassicOriginalGameScreen(),
    );
  }
}

class ClassicOriginalGameScreen extends StatefulWidget {
  @override
  _ClassicOriginalGameScreen createState() => _ClassicOriginalGameScreen();
}

class _ClassicOriginalGameScreen extends State<ClassicOriginalGameScreen> {
  @override
  Widget build(BuildContext context) {
    return myTable();
  }
}

class myTable extends StatefulWidget {
  @override
  _myTableState createState() => _myTableState();
}

class _myTableState extends State<myTable> {
  bool control = true;

  int counter = 0;

  List<int> randomNumbers = new List.filled(25, 0, growable: true);

  void generateNumbers() {
    while (counter <= 24) {
      int a = Random().nextInt(26);

      if (randomNumbers.contains(a)) {
      } else {
        randomNumbers.insert(counter, a);
        counter++;
      }
    }
  }

  int i = 1;

  void isEnd(int check) {
    if (check == 26) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ClassicOriginalFinal()));
    }
  }

  var startTimeOrig = new DateTime.now();
  var endTimeOrig = new DateTime.now();

  double seconds = 0.0;



  @override
  Widget build(BuildContext context) {
    startTimeOrig = DateTime.now();

    if (control == true) {
      generateNumbers();
      control = false;
    }

    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          title: Row(
            children: [
              Container(
                child: Text(
                  "Next#: $i",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(
                  children: [
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(0) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(0).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(1) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(1).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(2) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(2).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(3) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(3).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(4) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(4).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(5) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(5).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(6) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(6).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(7) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(7).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(8) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(8).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(9) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(9).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(10) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(10).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(11) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(11).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(12) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(12).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(13) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(13).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(14) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(14).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(15) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(15).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(16) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(16).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(17) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(17).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(18) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(18).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(19) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(19).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(20) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(20).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(21) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(21).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(22) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(22).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(23) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(23).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        if (randomNumbers.elementAt(24) == i) {
                          endTimeOrig = DateTime.now();
                          seconds = endTimeOrig
                              .difference(startTimeOrig)
                              .inMilliseconds /
                              1000;
                          timeStamps.insert(i - 1, seconds);
                          setState(() {});
                          i++;
                          isEnd(i);
                        }
                      },
                      child: Container(
                        height: 110,
                        child: Center(
                          child: Text(
                            randomNumbers.elementAt(24).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
