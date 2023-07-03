# try - except - else - finally 구문

# Q. 위에서 배운 코드를 바탕으로 아래의 빈 코드를 채워보세요.
# 시도할 코드
try:
    # 예외 걱정 없이 입력값에 float 함수를 씌움
    num = float(input('수를 입력하세요 : '))

# try에서 예외가 발생했을 때 실행할 코드
except:
    print('수가 아닙니다.')

# try에서 예외가 발생하지 않았다면 실행할 코드
else:
    print(f'입력한 수는 {num}입니다.')

# finally 구문 추가
finally:
    print('*' * 25)
    print('프로그램이 끝났습니다.')