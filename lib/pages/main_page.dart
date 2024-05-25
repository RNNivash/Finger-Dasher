import 'package:flutter/material.dart';
import 'package:finger_dasher/pages/game_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xffD53073),
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            child: Center(
              child: MaterialButton(
                color: Color(0xff1E2C4B),
                shape: CircleBorder(),
                height: 150,
                minWidth: 150,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamePage(),
                    ),
                  );
                },
                child: Text(
                  "START",
                  style: TextStyle(
                    color: Color(0xffD53073),
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Color(0xff1E2C4B),
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            child: Center(
              child: MaterialButton(
                color: Color(0xffD53073),
                shape: CircleBorder(),
                height: 150,
                minWidth: 150,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamePage(),
                    ),
                  );
                },
                child: Text(
                  "START",
                  style: TextStyle(
                    color: Color(0xff1E2C4B),
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
