# 실습퀴즈 2. 커스텀 공학 계산기 만들기
# 아래의 빈 코드를 완성하세요.
# 참고: 코드를 메모장에 붙여넣고, 파일명을 'calc.py'로 저장하세요.
# 제곱
# [[YOUR CODE
def power(x, y):
    return x ** y

# 세제곱
def cubic(x):
    return x ** 3

# 나누기
def divide(x, y):
    return x / y
# 1부터 n까지의 정수를 곱하는 팩토리얼 만들기
def factorial(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result