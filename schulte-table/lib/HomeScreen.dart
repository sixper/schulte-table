import 'package:flutter/material.dart';
import 'package:project_onur_erman/WarningSreen.dart';




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Choose one of the game modes to start:",
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          color: Colors.indigoAccent,
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReactionWarning()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      color: Colors.grey,
                      height: 160,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Reaction",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicLightWarning()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      color: Colors.grey,
                      height: 160,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Classic Light",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicLightReverseWarning()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      color: Colors.grey,
                      height: 160,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Classic Light Reverse",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicOriginalWarning()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      color: Colors.grey,
                      height: 160,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Classic Original",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicOriginalReverseWarning()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      color: Colors.grey,
                      height: 160,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Classic Original Reverse",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MemoryWarning()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      color: Colors.grey,
                      height: 160,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Memory",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
