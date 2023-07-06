class Square:
    def __init__(self): #생성자__init__의 매개변수의 첫번째는 self 여야 합니다.
        self.squre = int(input("넓이를 구하고 싶은 사각형의 숫자를 써주세요..\n 1. 직사각형 2. 평행사변형 3. 사다리꼴 \n >>>"))
        if self.squre == 1:
            print("직사각형의 함수는 rect() 입니다.") #Square 클래스의 rect() 메소드 추가
        elif self.squre == 2:
            print("평행사변형의 함수는 par() 입니다.") #Square 클래스의 para() 메소드 추가
        elif self.squre == 3:
            print("사다리꼴의 함수는 trape() 입니다.") #Square 클래스의 trape() 메소드 추가
        else:
            print("1,2,3 중에서 선택해주세요.")

    def rect(self):
        width,vertical = map(int, input("가로와 세로의 길이를 입력하세요.예시 : 가로,세로\n>>>").split(","))
        area = width * vertical
        result = '직사각형의 넓이는 :' + str(area)
        return result
    def par(self):
        base,height = map(int, input("밑변과 높이의 길이를 입력하세요.예시 : 가로,세로\n>>>").split(","))
        area = base * height
        result = '평행사변형의 넓이는 :' + str(area)
        return result
    def trape(self):
        base,top_side,height = map(int, input("밑변과 윗변과 높이의 길이를 입력하세요.예시 : 가로,세로\n>>>").split(","))
        area = (base + top_side) * height / 2
        result = '(등변)사다라꼴의 넓이는 :' + str(area)
        return result
a= Square()

if a.squre == 1:
    print(a.rect())
elif a.squre == 2:
    print(a.par())
elif a.squre == 3:
    print(a.trape())
else:
    print("1,2,3 중에서 선택해주세요.")



# a, b, c = "모.두.연".split(".")
# split() 메소드는 문자열을 특정한 단위로 나누어 순서에 맞게 변수에 값을 할당한다.
# map(적용시킬 함수, 적용할 값들)
# map(function, iterable)