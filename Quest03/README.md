# AIFFEL Campus Online 4th Code Peer Review Templete
- 코더 : 박근수
- 리뷰어 : 조대희


# PRT(PeerReviewTemplate) 
각 항목을 스스로 확인하고 토의하여 작성한 코드에 적용합니다.

- [X] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
- [X] 주석을 보고 작성자의 코드가 이해되었나요?
  > 해당 코드들이 각각 어떤 기능을 하는지, 기능별로 주석으로 구체적으로 명시되어있다.
- [X] 코드가 에러를 유발할 가능성이 없나요?
  > 파일 경로: file = open('/content/drive/MyDrive/Avengers.txt')의 파일 경로가 실제 파일 경로와 일치하는지 확인해야 합니다.
    제공된 경로 /content/drive/MyDrive/Avengers.txt는 Google Colab 환경에서 사용되는 예시 경로이므로, 실제 파일 경로에 맞게 수정해야 합니다.

    파일 핸들링: 파일을 열고 읽은 후에는 항상 파일을 닫아주어야 합니다. 현재 코드에서는 파일을 열고 읽은 뒤에 file.close()로 파일을 닫고 있습니다. 
    이를 보다 안전하게 처리하기 위해 with 문을 사용하면 파일 핸들링을 더 간단하게 처리할 수 있습니다.

    2-gram 생성: 현재 코드에서는 리스트 컴프리헨션을 사용하여 2-gram을 생성하고 있습니다. 그러나 이 방법은 메모리를 많이 사용할 수 있으므로 큰 텍스트 파일의 경우 처리에 어려움이 있을 수 있습니다. 
    대신, zip() 함수를 사용하여 필요한 시점에 2-gram을 생성하는 것이 더 효율적입니다.
      
- [X] 코드 작성자가 코드를 제대로 이해하고 작성했나요?
  > 각 코드의 기능을 설명하였다.
- [X] 코드가 간결한가요?
  > 간결하지만 아래 첨부된 코드와 같이 양을 줄이고, 기능을 개선시킬 수 있다.

# 예시
1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
```python
import re
from google.colab import drive
from collections import Counter

drive.mount('/content/drive')

def remove_symbols(text):
    cleaned_text = re.sub(r'[^\w\s]', ' ', text)  # 정규표현식 패턴을 사용하여 기호를 제거하고 ' '대체합니다.
    cleaned_text = cleaned_text.replace('\n',' ') #\n을 ' '으로 대체합니다.

    return cleaned_text

file = open('/content/drive/MyDrive/Avengers.txt') #Avengers파일 불러오기
contents = file.read()
file.close()
f = remove_symbols(contents) #기호를 제거한 문자열을 임의의 변수에 저장합니다.
new_contents = f.lower() #대문자를 소문자로 변환

words = new_contents.split() #word 단위로 나누어 list에 저장
two_grams = [' '.join(words[i:i+2]) for i in range(len(words)-1)]

ngrams = zip(words, words[1:]) # 2-grams

counter = Counter(ngrams)

most_common = counter.most_common(1)
print(most_common)
```

# 참고 링크 및 코드 개선
```python
import re
from google.colab import drive
from collections import Counter

drive.mount('/content/drive')

def remove_symbols(text):
    cleaned_text = re.findall(r'\b\w+\b', text) # 단어만 추출하여 리스트로 만듭니다.
    return cleaned_text

with open('/content/drive/MyDrive/Avengers.txt', 'r') as file:
    contents = file.read()
    f = remove_symbols(contents) # 기호를 제거한 단어 리스트를 얻습니다.
    new_contents = ' '.join(f).lower() # 리스트를 문자열로 결합하고 소문자로 변환합니다.

words = new_contents.split() # 단어 단위로 나누어 리스트에 저장합니다.
two_grams = list(zip(words, words[1:])) # 2-grams를 생성합니다.

counter = Counter(two_grams)

most_common = counter.most_common(1)
print(most_common)
```
