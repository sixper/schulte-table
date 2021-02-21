import 'package:flutter/material.dart';
import 'package:project_onur_erman/FinalScreen.dart';
import 'dart:math';
import 'dart:core';
import 'dart:async';

class MemoryGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MemoryGameScreen(),
    );
  }
}

class MemoryGameScreen extends StatefulWidget {
  @override
  _MemoryGameScreen createState() => _MemoryGameScreen();
}

class _MemoryGameScreen extends State<MemoryGameScreen> {
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

  bool mainVisibility = true;

  bool isVisible0 = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;
  bool isVisible5 = false;
  bool isVisible6 = false;
  bool isVisible7 = false;
  bool isVisible8 = false;
  bool isVisible9 = false;
  bool isVisible10 = false;
  bool isVisible11 = false;
  bool isVisible12 = false;
  bool isVisible13 = false;
  bool isVisible14 = false;
  bool isVisible15 = false;
  bool isVisible16 = false;
  bool isVisible17 = false;
  bool isVisible18 = false;
  bool isVisible19 = false;
  bool isVisible20 = false;
  bool isVisible21 = false;
  bool isVisible22 = false;
  bool isVisible23 = false;
  bool isVisible24 = false;

  bool _control0 = true;
  bool _control1 = true;
  bool _control2 = true;
  bool _control3 = true;
  bool _control4 = true;
  bool _control5 = true;
  bool _control6 = true;
  bool _control7 = true;
  bool _control8 = true;
  bool _control9 = true;
  bool _control10 = true;
  bool _control11 = true;
  bool _control12 = true;
  bool _control13 = true;
  bool _control14 = true;
  bool _control15 = true;
  bool _control16 = true;
  bool _control17 = true;
  bool _control18 = true;
  bool _control19 = true;
  bool _control20 = true;
  bool _control21 = true;
  bool _control22 = true;
  bool _control23 = true;
  bool _control24 = true;



  void myFunction0() {
    setState(() {
      isVisible0 = false;

    });
  }

  void myFunction1() {
    setState(() {
      isVisible1 = false;

    });
  }

  void myFunction2() {
    setState(() {
      isVisible2 = false;

    });
  }

  void myFunction3() {
    setState(() {
      isVisible3 = false;

    });
  }

  void myFunction4() {
    setState(() {
      isVisible4 = false;

    });
  }

  void myFunction5() {
    setState(() {
      isVisible5 = false;

    });
  }

  void myFunction6() {
    setState(() {
      isVisible6 = false;

    });
  }

  void myFunction7() {
    setState(() {
      isVisible7 = false;

    });
  }

  void myFunction8() {
    setState(() {
      isVisible8 = false;

    });
  }

  void myFunction9() {
    setState(() {
      isVisible9 = false;

    });
  }

  void myFunction10() {
    setState(() {
      isVisible10 = false;

    });
  }

  void myFunction11() {
    setState(() {
      isVisible11 = false;

    });
  }

  void myFunction12() {
    setState(() {
      isVisible12 = false;

    });
  }

  void myFunction13() {
    setState(() {
      isVisible13 = false;

    });
  }

  void myFunction14() {
    setState(() {
      isVisible14 = false;

    });
  }

  void myFunction15() {
    setState(() {
      isVisible15 = false;

    });
  }

  void myFunction16() {
    setState(() {
      isVisible16 = false;

    });
  }

  void myFunction17() {
    setState(() {
      isVisible17 = false;

    });
  }

  void myFunction18() {
    setState(() {
      isVisible18 = false;

    });
  }

  void myFunction19() {
    setState(() {
      isVisible19 = false;

    });
  }

  void myFunction20() {
    setState(() {
      isVisible20 = false;

    });
  }

  void myFunction21() {
    setState(() {
      isVisible21 = false;

    });
  }

  void myFunction22() {
    setState(() {
      isVisible22 = false;

    });
  }

  void myFunction23() {
    setState(() {
      isVisible23 = false;

    });
  }

  void myFunction24() {
    setState(() {
      isVisible24 = false;

    });
  }

  void isEnd(int check) {
    if (check == 26) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MemoryFinal()));
    }
  }

  var startTime = new DateTime.now();
  var endTime = new DateTime.now();
  double seconds = 0.0;

  void _changeVisibility() {
    setState(() {
      mainVisibility = false;
    });
  }

  bool _startTimeCheck = true;

  @override
  Widget build(BuildContext context) {

    new Timer(Duration(seconds: 3), _changeVisibility);


    if(_startTimeCheck){

      startTime = DateTime.now();
      _startTimeCheck = false;

    }


    if (control == true) {
      generateNumbers();
      control = false;
    }

    return Scaffold(
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
      body: Column(children: [
        Container(
          child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible0 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction0);

                      if (randomNumbers.elementAt(0) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds /
                                1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction0();
                        _control0 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control0 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control0 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible0,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible1 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction1);

                      if (randomNumbers.elementAt(1) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction1();
                        _control1 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control1 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control1 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible1,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible2 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction2);

                      if (randomNumbers.elementAt(2) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction2();
                        _control2 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control2 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control2 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible2,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible3 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction3);

                      if (randomNumbers.elementAt(3) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction3();
                        _control3 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control3 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control3 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible3,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible4 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction4);

                      if (randomNumbers.elementAt(4) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction4();
                        _control4 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control4 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control4 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible4,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible5 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction5);

                      if (randomNumbers.elementAt(5) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction5();
                        _control5 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control5 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control5 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible5,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible6 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction6);

                      if (randomNumbers.elementAt(6) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction6();
                        _control6 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control6 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control6 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible6,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible7 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction7);

                      if (randomNumbers.elementAt(7) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction7();
                        _control7 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control7 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control7 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible7,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible8 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction8);

                      if (randomNumbers.elementAt(8) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction8();
                        _control8 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control8 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control8 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible8,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible9 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction9);

                      if (randomNumbers.elementAt(9) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction9();
                        _control9 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control9 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control9 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible9,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible10 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction10);

                      if (randomNumbers.elementAt(10) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction10();
                        _control10 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control10 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control10 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible10,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible11 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction11);

                      if (randomNumbers.elementAt(11) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction11();
                        _control11 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control11 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control11 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible11,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible12 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction12);

                      if (randomNumbers.elementAt(12) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction12();
                        _control12 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control12 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control12 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible12,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible13 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction13);

                      if (randomNumbers.elementAt(13) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction13();
                        _control13 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control13 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control13 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible13,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible14 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction14);

                      if (randomNumbers.elementAt(14) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction14();
                        _control14 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control14 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control14 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible14,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible15 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction15);

                      if (randomNumbers.elementAt(15) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction15();
                        _control15 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control15 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control15 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible15,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible16 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction16);

                      if (randomNumbers.elementAt(16) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction16();
                        _control16 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control16 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control16 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible16,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible17 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction17);

                      if (randomNumbers.elementAt(17) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction17();
                        _control17 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control17 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control17 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible17,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible18 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction18);

                      if (randomNumbers.elementAt(18) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction18();
                        _control18 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control18 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control18 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible18,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible19 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction19);

                      if (randomNumbers.elementAt(19) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction19();
                        _control19 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control19 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control19 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible19,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible20 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction20);

                      if (randomNumbers.elementAt(20) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction20();
                        _control20 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control20 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control20 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible20,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible21 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction21);

                      if (randomNumbers.elementAt(21) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction21();
                        _control21 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control21 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control21 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible21,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible22 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction22);

                      if (randomNumbers.elementAt(22) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction22();
                        _control22 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control22 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control22 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible22,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible23 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction23);

                      if (randomNumbers.elementAt(23) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction23();
                        _control23 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control23 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control23 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible23,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible24 = true;
                      });

                      new Timer(Duration(seconds: 3), myFunction24);

                      if (randomNumbers.elementAt(24) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        _startTimeCheck = true;
                        myFunction24();
                        _control24 = false;
                        isEnd(i);
                      }
                    },
                    child: Container(
                      color: _control24 ? Colors.white : Colors.black,
                      height: 110,
                      child: Center(
                        child: Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainInteractivity: _control24 ? true : false,
                          maintainSemantics: true,
                          visible: mainVisibility ? true : isVisible24,
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
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
