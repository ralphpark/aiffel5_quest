import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PomodoroTimer(),
  ));
}

class PomodoroTimer extends StatefulWidget {
  @override
  _PomodoroTimerState createState() => _PomodoroTimerState();
}

class _PomodoroTimerState extends State<PomodoroTimer> {
  Timer? timer;
  int timeLeftInSeconds = 25 * 60; // 초기값은 학습 시간으로 설정
  int initialTimePerSession = 25 *
      60; // Add this to remember the initial time for each session.

  int sessionCount = 1;

  void startOrResume() {
    if (timer == null || !timer!.isActive) {
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (timeLeftInSeconds > 0) {
            timeLeftInSeconds--;
          } else {
            nextSession();
          }
        });
      });
    }
  }

  void pause() {
    timer?.cancel();
  }

  void reset() {
    timer?.cancel();
    setState(() {
      timeLeftInSeconds = initialTimePerSession;
    });
  }

  void nextSession() {
    timer?.cancel();
    setState(() {
      sessionCount++;
      if (sessionCount % 8 == 0) {
        initialTimePerSession = 15 * 60;
      } else if (sessionCount % 2 == 0) {
        initialTimePerSession = 5 * 60;
      } else {
        initialTimePerSession = 25 * 60;
      }

      timeLeftInSeconds = initialTimePerSession;

      if (sessionCount >= 9) {
        sessionCount = 1;
        initialTimePerSession = 25 * 60;
        timeLeftInSeconds = initialTimePerSession;
      }
    });

    // Start the new timer automatically.
    startOrResume();
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    switch (sessionCount % 2) {
      case 0:
        backgroundColor = Colors.blue;
        break;

      default:
        backgroundColor = Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Pomodoro Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Session ${sessionCount} - ${sessionCount % 2 == 0 ? "Break" : "Work"}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 30),
            Text(
              '${timeLeftInSeconds ~/ 60}:${timeLeftInSeconds % 60}',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor, // Set background color here.
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: startOrResume,
            child: Icon(Icons.play_arrow),
            backgroundColor: Colors.purple,
          ),
          FloatingActionButton(
            onPressed: pause,
            child: Icon(Icons.pause),
            backgroundColor: Colors.purple,
          ),
          FloatingActionButton(
            onPressed: nextSession,
            child: Icon(Icons.skip_next),
            backgroundColor: Colors.purple,
          ),
          FloatingActionButton(
            onPressed: reset,
            child: Icon(Icons.refresh),
            backgroundColor: Colors.purple,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
