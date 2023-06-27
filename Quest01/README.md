# AIFFEL Campus Online 5th Code Peer Review Templete
- 코더 : 박근수 그루.
- 리뷰어 : 신지만 그루.


# PRT(PeerReviewTemplate) 
각 항목을 스스로 확인하고 토의하여 작성한 코드에 적용합니다.

- [0] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
  > 입출력, 변수 및 함수 선언, 회문 비교 조건문이 정상 작동하는 것으로 확인. 
- [0 ] 주석을 보고 작성자의 코드가 이해되었나요?
  > 주석 코드는 없으나 함수 선언, 입출력, 회문 조건문 등이 간결해 이해 용이함.
  - [ ] 코드가 에러를 유발할 가능성이 없나요?
  > 특이 사항은 없으나 입력문에서 특수 문자나 공백문자를 제거하는 기능을 추가하면 더 좋을 듯
- [ ] 코드 작성자가 코드를 제대로 이해하고 작성했나요?
```python
  > 함수 정의문 : def is_word (word):
  > 입력문 : word = str(input('단어를 입력하세요 : '))
  > 함수 호출문 : is_word(word)
  > 회문 여부 비교문 : if word1 == reverse_word1:
  > 회문 결과 출렵문 : print('')
  > 각 기능을 잘 기술하는 것으로 봐 코드를 제대로 이해하는 것으로 판단됨.

- [ ] 코드가 간결한가요?
  > 입력 문자 slicing 방법이 아주 간결하고 인상적임.

# 예시
1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
# 회문 

def is_word (word):
    word1 = word
    reverse_word1 = word1[::-1]
    print("뒤집힌 단어는 :", reverse_word1)
    if word1 == reverse_word1:
      #print("뒤집힌 단어는 :", reverse_word1)
      print("회문이 맞습니다.")

    else:
      #print("뒤집힌 단어는 :", reverse_word1)
      print("회문이 아닙니다.")



word = str(input('단어를 입력하세요 : '))
is_word(word)


# 참고 링크 및 코드 개선

# 코드 리뷰 시 참고한 링크가 있다면 링크와 간략한 설명을 첨부합니다.
> 문자열 slicing 이해를 위해 아래 링크 참고
> https://dojang.io/mod/page/view.php?id=2208

# 코드 리뷰를 통해 개선한 코드가 있다면 코드와 간략한 설명을 첨부합니다.
```
