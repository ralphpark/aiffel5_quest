# AIFFEL Campus Online 4th Code Peer Review Templete
- 코더 : 박근수
- 리뷰어 : 심지안


# PRT(PeerReviewTemplate) 
각 항목을 스스로 확인하고 토의하여 작성한 코드에 적용합니다.

- [X] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
  네 해결되었습니다.
- [ ] 주석을 보고 작성자의 코드가 이해되었나요?
  > 제가 공부가 부족해서 주석만 보고는 이해하는데 시간이 걸릴 것 같습니다
- [X] 코드가 에러를 유발할 가능성이 없나요?
  > 잘 모르겠지만 그럴 것 같습니다.
- [X] 코드 작성자가 코드를 제대로 이해하고 작성했나요?
  > 각각의 함수가 어떻게 기능하는지 잘 설명해주셨습니다.
  > 예를 들면 첫번째 함수는 상하좌우 위치를 탐색하고, 두번째는 이동한 경로를 기억하고 세번째는 미로를 통과할 수 있는지 여부를 판단하는 함수라 알려주셨는데
  > 전체 코드 동작 원리를 파악하는데 무척 도움이 되었습니다
- [X] 코드가 간결한가요? 
  > 제 실력으로 아직은 판단하기가 어렵지만 위의 내용으로 판단했을때 정상적인 동작을 위한 최소한의 코드로 구성되어 있는 것 같습니다!

# 예시
1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
```python
# 사칙 연산 계산기
class calculator:
    # 예) init의 역할과 각 매서드의 의미를 서술
    def __init__(self, first, second):
        self.first = first
        self.second = second
    
    # 예) 덧셈과 연산 작동 방식에 대한 서술
    def add(self):
        result = self.first + self.second
        return result

a = float(input('첫번째 값을 입력하세요.')) 
b = float(input('두번째 값을 입력하세요.')) 
c = calculator(a, b)
print('덧셈', c.add()) 
```

# 참고 링크 및 코드 개선
```python
# 코드 리뷰 시 참고한 링크가 있다면 링크와 간략한 설명을 첨부합니다.
# 코드 리뷰를 통해 개선한 코드가 있다면 코드와 간략한 설명을 첨부합니다.
