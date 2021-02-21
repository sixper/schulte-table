import 'package:flutter/material.dart';
import 'package:project_onur_erman/ReactionGameScreen.dart';
import 'package:project_onur_erman/ClassicLightGameScreen.dart';
import 'package:project_onur_erman/ClassicLightReverseGameScreen.dart';
import 'package:project_onur_erman/ClassicOriginalGameScreen.dart';
import 'package:project_onur_erman/ClassicOriginalReverseGameScreen.dart';
import 'package:project_onur_erman/MemoryGameScreen.dart';

class ReactionWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReactionWarningHome(),
    );
  }
}

class ReactionWarningHome extends StatelessWidget {
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
      backgroundColor: Colors.indigoAccent,
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
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ReactionGame())
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 350,
                      width: 400,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
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
          ],
        ),
      ),
    );
  }
}

class ClassicLightWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassicLightWarningHome(),
    );
  }
}

class ClassicLightWarningHome extends StatelessWidget {
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
      backgroundColor: Colors.indigoAccent,
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
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ClassicLightGame())
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 350,
                      width: 400,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
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
          ],
        ),
      ),
    );
  }
}

class ClassicLightReverseWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassicLightReverseWarningHome(),
    );
  }
}

class ClassicLightReverseWarningHome extends StatelessWidget {
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
      backgroundColor: Colors.indigoAccent,
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
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ClassicLightReverseGame())
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 350,
                      width: 400,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
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
          ],
        ),
      ),
    );
  }
}

class ClassicOriginalWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassicOriginalWarningHome(),
    );
  }
}

class ClassicOriginalWarningHome extends StatelessWidget {
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
      backgroundColor: Colors.indigoAccent,
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
                      "Mode: Classic",
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
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ClassicOriginalGame())
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 350,
                      width: 400,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
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
          ],
        ),
      ),
    );
  }
}

class ClassicOriginalReverseWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassicOriginalReverseWarningHome(),
    );
  }
}

class ClassicOriginalReverseWarningHome extends StatelessWidget {
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
      backgroundColor: Colors.indigoAccent,
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
                      "Mode: Classic Reverse",
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
              children: [
                ClipOval(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ClassicOriginalReverseGame())
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 350,
                      width: 400,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
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
          ],
        ),
      ),
    );
  }
}

class MemoryWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MemoryWarningHome(),
    );
  }
}

class MemoryWarningHome extends StatelessWidget {
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
      backgroundColor: Colors.indigoAccent,
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
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 411,
                  child: Center(
                    child: Text(
                      "After start you will have 3 seconds to remember location of as many numbers as you can and after that"
                          "numbers will dissapear, click on the boxes in ascending order from 1 to 25.",
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
              children: [
                Container(
                  height: 50,
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
              children: [
                Expanded(
                  child: Container(
                    height: 300,
                    width: 400,
                  ),
                ),
                ClipOval(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MemoryGame())
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      height: 250,
                      width: 400,
                      child: Center(
                        child: Text(
                          "CLICK HERE TO START",
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
          ],
        ),
      ),
    );
  }
}
