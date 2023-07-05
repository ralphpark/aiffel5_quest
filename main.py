# 문제 2-1. Kiosk 클래스를 생성합니다.
# 전체 메뉴와 가격
menu = ['americano', 'latte', 'mocha', 'yuza_tea', 'green_tea', 'choco_latte']
price = [2000, 3000, 3000, 2500, 2500, 3000]
class Kiosk:
    def __init__(self):
        self.menu = menu
        self.price = price

    def menu_print(self):
        for i in range(len(self.menu)):
            print(i + 1, self.menu[i], ' : ', self.price[i], '원')

    # 문제 2-2. 주문 메서드
    # 음료의 이름과 가격을 출력하세요.

#     def menu_select(self):
#         n = int(input("음료의 번호를 입력하세요 : "))  # 음료 번호 입력
#         self.price_sum = self.price[n - 1]  # 선택 음료의 가격
#         # 문제 2-2. 음료의 이름과 가격을 출력하세요.
#         print(  , ' : ', , '원')  # 메뉴
#
# a = Kiosk()
# print(a.menu_print())
