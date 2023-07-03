# 복습퀴즈. closure를 직접 구현해봅시다. # [[YOUR CODE]]에 들어가야할 코드는 무엇일까요? 

def int_plus(n):
    def plus(x):
        return n + x
    return plus

# 결과 확인
closure_plus = int_plus(2)
print(closure_plus(3))