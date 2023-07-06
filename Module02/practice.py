#백준 1292번 문제

# A = int(input("숫자 A를 입력해주세요 :"))   # 시작 숫자
# B = int(input("숫자 B를 입력해주세요 :"))   # 끝 숫자
A,B = map(int, input().split())  # 시작 숫자, 끝 숫자 입력

try :
    if (1 <= A <= B <= 1000):
        sequence = []  # 수열을 저장할 리스트 생성
        for i in range(1, B + 1):
            sequence += [i] * i
        result = sum(sequence[A - 1:B])
        print(result)
finally:
    if not (1 <= A <= B <= 1000):
        print("A와 B는 1 ≤ A ≤ B ≤ 1,000 을 만족해야 합니다.")
