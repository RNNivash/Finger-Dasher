import 'package:flutter/material.dart';
import 'package:finger_dasher/pages/result_page.dart';

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  double pinkCardHeight = 0;
  double blueCardHeight = 0;

  int playerXScore = 0;
  int playerYScore = 0;

  bool initialized = false;

  @override
  Widget build(BuildContext context) {
    if (initialized == false) {
      pinkCardHeight = MediaQuery.of(context).size.height / 2;
      blueCardHeight = MediaQuery.of(context).size.height / 2;

      initialized = true;
    }

    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              setState(
                () {
                  pinkCardHeight = pinkCardHeight + 30;
                  blueCardHeight = blueCardHeight - 30;

                  playerYScore = playerYScore + 5;
                },
              );

              double winningHeight = MediaQuery.of(context).size.height - 75;

              if (pinkCardHeight > winningHeight) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(playerYScore, "Y"),
                  ),
                );
              }
            },
            padding: EdgeInsets.zero,
            child: Container(
              width: double.infinity,
              height: pinkCardHeight,
              color: Color(0xffD53073),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: SafeArea(
                      child: Text(
                        "Player Y",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff1E2C4B),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    playerYScore.toString(),
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff1E2C4B),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(
                () {
                  blueCardHeight = blueCardHeight + 30;
                  pinkCardHeight = pinkCardHeight - 30;

                  playerXScore = playerXScore + 5;
                },
              );

              double screenHeight = MediaQuery.of(context).size.height;
              double winningHeight = MediaQuery.of(context).size.height - 75;

              if (blueCardHeight > winningHeight) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(playerXScore, "X"),
                  ),
                );
              }
            },
            padding: EdgeInsets.zero,
            child: Container(
              width: double.infinity,
              height: blueCardHeight,
              color: Color(0xff1E2C4B),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: SafeArea(
                      child: Text(
                        "Player X",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffD53073),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    playerXScore.toString(),
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xffD53073),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
