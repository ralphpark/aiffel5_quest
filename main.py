
class Kiosk:
    def __init__(self):
        self.menu = ['americano', 'latte', 'mocha', 'yuza_tea', 'green_tea', 'choco_latte']
        self.price = [1500, 2000, 2500, 3000, 3000, 4000]

    def menu_print(self):
        for i in range(len(self.menu)):
            print(i+1," ",self.menu[i], " ", self.price[i])

    def menu_select(self):
        self.order_menu = []
        self.order_price = []
        n=0
        while n<1 or len(self.menu) < n:
            n = int(input("메뉴를 선택하세요: "))
            if n>0 and len(self.menu) >= n:
                print("주문하신 메뉴는 ", self.menu[n-1], "입니다.")
                self.order_price.append(self.price[n-1])
            else:
                print("없는 메뉴입니다. 다시 선택해주세요.")
        t = 0
        while t!=1 and t!=2:
            t = int(input("타입을 선택해주세요. (1: ICE / 2: HOT)"))
            if t==1:
                temp = "ICE"
            elif t==2:
                temp = "HOT"
            else:
                print("다시 선택해주세요.")
        self.order_menu.append(temp + " " + self.menu[n-1])
        print(temp, self.menu[n-1], "주문하신 금액은 ", self.price[n-1], "입니다.")
    # 추가 주문
        while True:
            a = input("추가 주문하시겠습니까? (y/n)")
            if a == 'y':
                self.menu_print()
                n = int(input("메뉴를 선택하세요: "))
                if n>0 and len(self.menu) >= n:
                    print("주문하신 메뉴는 ", self.menu[n-1], "입니다.")
                    self.order_price.append(self.price[n-1])
                else:
                    print("없는 메뉴입니다. 다시 선택해주세요.")
                t = 0
                while t!=1 and t!=2:
                    t = int(input("타입을 선택해주세요. (1: ICE / 2: HOT)"))
                    if t==1:
                        temp = "ICE"
                    elif t==2:
                        temp = "HOT"
                    else:
                        print("다시 선택해주세요.")
                self.order_menu.append(temp + " " + self.menu[n-1])
                print(temp, self.menu[n-1], "주문하신 금액은 ", self.price[n-1], "입니다.")
            elif a == 'n':
                break
            else:
                print("다시 선택해주세요.")
    def pay(self):
        if sum(self.order_price) != 0:
            print("주문하신 전체 금액은 ", sum(self.order_price), "입니다.")
            self.pay_method = 0
            while self.pay_method != 1 and self.pay_method != 2:
                self.pay_method = int(input("결제 방법을 선택해주세요. (1: 현금 / 2: 카드)"))
                if self.pay_method == 1:
                    print("현금 결제입니다.")
                    self.pay_cash = int(input("현금을 넣어주세요: "))
                    if self.pay_cash < sum(self.order_price):
                        print("금액이 부족합니다.")
                        self.pay_cash = int(input("현금을 넣어주세요: "))
                    else:
                        print("거스름돈은 ", self.pay_cash - sum(self.order_price), "입니다.")
                elif self.pay_method == 2:
                    print("카드 결제입니다.")
                else:
                    print("다시 선택해주세요.")
        else:
            print("주문이 완료되지 않았습니다.")
    def table(self):
        print('-' + '-' * 30 + '-')
        for i in range(5):
            print('|' + ' ' * 31 + '|')
        for i in range(len(self.order_menu)):
            print(self.order_menu[i], ":" ,self.order_price[i])
        print("합계금액 :" , sum(self.order_price))
        for i in range(5):
            print('|' + ' ' * 31 + '|')
        print('-' + '-' * 30 + '-')

a = Kiosk()
print(a.menu_print())
print(a.menu_select())
print(a.pay())
print(a.table())

