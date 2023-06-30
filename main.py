

# 리듀스는 팩토리알과 같은 계산방법이다!
from functools import reduce
def f(x,y):
    return x*y
a = [1,2,3,4,5]
aa = reduce(f,a)
print(aa)

aaa = reduce(lambda x,y:x*y, a)
print(aaa)
# Q. 리스트 컴프리헨션과 람다 표현식을 이용해 1부터 100까지의 합을 구하는 코드를 구현해보세요!
aaaa = reduce(lambda x,y:x+y,([i for i in range(0,101)]))
print(aaaa)

