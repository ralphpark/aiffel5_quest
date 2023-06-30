# 실습퀴즈4. 문자열의 길이를 판별하는 함수를 만들어 보세요.

def closure_str_checker():
    # 문자열이 길면 알려주는 함수
    def check_length(limit):
        def length_func(string):
            if len(string) > limit:
                return f'길이는 {len(string)}개 입니다. 지정한 길이보다 길어요.' 
            else:
                return "길이가 적당합니다."
        return length_func

    def str_checker(string):
        num_len = 20 # 길이를 설정합니다. 
        length = check_length(num_len)
        if len(string) <= 0:
            print('문자열의 길이가 0보다 작거나 같습니다.')
        else:
            print('문자열의 길이 :', len(string), length(string), sep='\n')
    return str_checker

check = closure_str_checker()
test_str = '화이팅. 아자 아자 화이팅!!!!!!!!' # 길이가 다른 문자열을 입력해보세요.
check(test_str)