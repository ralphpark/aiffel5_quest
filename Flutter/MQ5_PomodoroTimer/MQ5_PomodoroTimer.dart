import 'dart:async';

void main() {
  final pomodoro = PomodoroTimer(); // PomodoroTimer 인스턴스 생성
  pomodoro.start(); // Pomodoro 타이머 시작
}

class PomodoroTimer {
  int workDuration = 25;        // 작업 시간 (분)
  int shortBreakDuration = 5;   // 짧은 휴식 시간 (분)
  int longBreakDuration = 15;   // 긴 휴식 시간 (분)
  int workCount = 0;            // 작업 횟수
  Timer? timer;                 // Timer 인스턴스 변수

  // 주어진 duration과 콜백 함수를 사용하여 타이머 시작
  void startTimer(int duration, Function callback) {
    var secondsLeft = duration * 60; // 분을 초로 변환
    timer?.cancel(); // 현재 타이머가 실행 중이면 취소
    timer = Timer.periodic(
      Duration(seconds: 1),
          (_) { // 매초마다 이 코드 블록 실행
        if (secondsLeft <= 0) {
          callback(); // 남은 시간이 없으면 콜백 함수 실행
        } else {
          // 남은 시간을 분과 초로 출력
          print('남은 시간: ${secondsLeft ~/ 60}분 ${secondsLeft % 60}초');
          secondsLeft--; // 남은 시간 감소
        }
      },
    );
  }

  // 작업 타이머 시작
  void start() {
    workCount++; // 작업 횟수 증가
    print('Pomodoro 타이머 시작 (작업 ${workCount}회차)');
    startTimer(
      workDuration,
          () { // 작업 시간이 종료되면 실행
        print('작업 시간 종료 (작업 ${workCount}회차)');
        if (workCount % 4 == 0) {
          startLongBreak(); // 작업 횟수가 4의 배수면 긴 휴식 시작
        } else {
          startShortBreak(); // 작업 횟수가 4의 배수가 아니면 짧은 휴식 시작
        }
      },
    );
  }

  // 짧은 휴식 타이머 시작
  void startShortBreak() {
    print('짧은 휴식 시작');
    startTimer(
      shortBreakDuration,
          () { // 짧은 휴식 시간이 종료되면 실행
        print('짧은 휴식 종료');
        start(); // 작업 타이머 시작
      },
    );
  }

  // 긴 휴식 타이머 시작
  void startLongBreak() {
    print('긴 휴식 시작');
    startTimer(
      longBreakDuration,
          () { // 긴 휴식 시간이 종료되면 실행
        print('긴휴식 종료');
        start(); // 작업 타이머 시작
      },
    );
  }
}
