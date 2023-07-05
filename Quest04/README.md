# AIFFEL Campus Online 4th Code Peer Review Templete
- 코더 : 박근수
- 리뷰어 : 서원영


# PRT(PeerReviewTemplate) 
각 항목을 스스로 확인하고 토의하여 작성한 코드에 적용합니다.

- [X] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
  > 코드는 정상적으로 동작하고 주어진 문제도 잘 해결 하였습니다.
- [X] 주석을 보고 작성자의 코드가 이해되었나요?
  > 각 코드 별로 주석을 통해 말하고자 하는 바가 상세히 설명되어 이해하기 쉬웠습니다.
- [X] 코드가 에러를 유발할 가능성이 없나요?
  > fish_list에서 딕셔너리에 '이름' 혹은 'speed' 키가 없을 경우 KeyError가 발생할 수 있습니다. 이를 예방하기 위해 딕셔너리에 키가 있는지 확인하거나 dict.get() 메서드를 사용하여 KeyError를 방지한다면 좋을 것 같습니다.
- [X] 코드 작성자가 코드를 제대로 이해하고 작성했나요?
  > 코더 분께서 제가 질문하는 부분을 모두 잘 대답해 주셨기 때문에 잘 이해하고 작성하셨음을 알 수 있었습니다.
- [X] 코드가 간결한가요?
  > 30줄이 넘지않는 간결한 코드로 충분히 간결하다고 느낄 수 있었습니다.

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
```
from time import sleep 

def show_fish_movement_comprehension(fish_list): 
    return [f"{i.get('이름')} is swimming at a speed of {i.get('speed')} m/s" for i in fish_list] 

def show_fish_movement_Generator(fish_list): 
    for i in fish_list: 
        yield (f"{i.get('이름')} is swimming at a speed of {i.get('speed')} m/s")

fish_list = [{"이름": "Nemo", "speed": 3}, {"이름": "Dory", "speed": 5}]

print("Using Comprehension : ")
for i in show_fish_movement_comprehension(fish_list): 
    sleep(2)
    print(i)

fish_gen = show_fish_movement_Generator(fish_list)
sleep(2)
print("Using Generator :")
while True: 
    try:
        sleep(2)
        fish_movement = next(fish_gen)
        print(fish_movement)
    except StopIteration: 
        break

  이렇게 변경하면, "이름"이나 "speed"라는 키가 없는 경우에도 KeyError가 발생하지 않습니다. 물론, 이 경우 None 값이 출력됩니다.
