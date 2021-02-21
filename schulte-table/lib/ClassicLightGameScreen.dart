import 'package:flutter/material.dart';
import 'package:project_onur_erman/FinalScreen.dart';
import 'dart:math';
import 'dart:core';

class ClassicLightGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassicLightGameScreen(),
    );
  }
}

class ClassicLightGameScreen extends StatefulWidget {
  @override
  _ClassicLightGameScreen createState() => _ClassicLightGameScreen();
}

class _ClassicLightGameScreen extends State<ClassicLightGameScreen> {
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

  bool isVisible0 = true;
  bool isVisible1 = true;
  bool isVisible2 = true;
  bool isVisible3 = true;
  bool isVisible4 = true;
  bool isVisible5 = true;
  bool isVisible6 = true;
  bool isVisible7 = true;
  bool isVisible8 = true;
  bool isVisible9 = true;
  bool isVisible10 = true;
  bool isVisible11 = true;
  bool isVisible12 = true;
  bool isVisible13 = true;
  bool isVisible14 = true;
  bool isVisible15 = true;
  bool isVisible16 = true;
  bool isVisible17 = true;
  bool isVisible18 = true;
  bool isVisible19 = true;
  bool isVisible20 = true;
  bool isVisible21 = true;
  bool isVisible22 = true;
  bool isVisible23 = true;
  bool isVisible24 = true;

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
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ClassicLightFinal()));
    }
  }

  var startTime = new DateTime.now();
  var endTime = new DateTime.now();
  double seconds = 0.0;

  int i = 1;

  @override
  Widget build(BuildContext context) {
    startTime = DateTime.now();

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
      body: Column(
        children: [
          Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(0) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction0();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible0,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(1) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction1();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible1,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(2) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction2();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible2,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(3) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction3();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible3,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(4) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction4();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible4,
                      child: Container(
                        color: Colors.white,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(5) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction5();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible5,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(6) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction6();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible6,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(7) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction7();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible7,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(8) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction8();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible8,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(9) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction9();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible9,
                      child: Container(
                        color: Colors.white,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(10) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction10();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible10,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(11) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction11();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible11,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(12) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction12();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible12,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(13) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction13();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible13,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(14) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction14();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible14,
                      child: Container(
                        color: Colors.white,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(15) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction15();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible15,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(16) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction16();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible16,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(17) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction17();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible17,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(18) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction18();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible18,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(19) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction19();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible19,
                      child: Container(
                        color: Colors.white,
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
                  ),
                ],
              ),
              TableRow(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(20) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction20();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible20,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(21) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction21();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible21,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(22) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction22();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible22,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(23) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction23();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible23,
                      child: Container(
                        color: Colors.white,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (randomNumbers.elementAt(24) == i) {
                        endTime = DateTime.now();
                        seconds =
                            endTime.difference(startTime).inMilliseconds / 1000;
                        timeStamps.insert(i - 1, seconds);
                        i++;
                        myFunction24();
                        isEnd(i);
                      }
                    },
                    child: Visibility(
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      visible: isVisible24,
                      child: Container(
                        color: Colors.white,
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
    );
  }
}
