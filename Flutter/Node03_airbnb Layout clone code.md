### 3-4. airbnb Layout clone code 실습 1

airbnb_clone 폴더 내 코드 참고
[종합퀴즈]
① 자식 Widget에서 따로 규정하지 않은 속성은 부모 Widget에서 상속되는데요. 플러터에서 이렇게 Widget의 상속 기능은 왜 만들었을까요?

코드의 재사용성과 모듈화를 촉진하기 위해서 입니다.

② main.dart 파일에서 '/' : (context) => HomePage() 부분을 '/' : (context) => Explore() 고쳤을 때 그대로 정상 동작하기 위해선 어느 부분을 어떻게 고쳐야할까요?

home.dart 파일에서 정의된 HomePage 클래스명을 Explore로 변경해야합니다.