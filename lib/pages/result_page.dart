import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  int score = 0;
  String player = "";

  ResultPage(this.score, this.player);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: player == "X" ? Color(0xff1E2C4B) : Color(0xffD53073),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              score.toString(),
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: player == 'X' ? Color(0xffD53073) : Color(0xff1E2C4B),
              ),
            ),
            Text(
              player == "X" ? "PLAYER \'X' WON 🏆" : "PLAYER \'Y' WON 🏆",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: player == 'X' ? Color(0xffD53073) : Color(0xff1E2C4B),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              color: player == 'X' ? Color(0xffD53073) : Color(0xff1E2C4B),
              child: Text(
                "Restart Game",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: player == 'X' ? Color(0xff1E2C4B) : Color(0xffD53073),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
