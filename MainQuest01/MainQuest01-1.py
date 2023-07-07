
# Account 클래스 생성
import random
class Account:
    # 클래스 변수
    account_count = 0# 계좌 개수를 저장하는 클래스 변수
    account_list = [] # 계좌 목록을 저장하는 클래스 변수
    # 생성자
    def __init__(self, name, money):
        self.name = name
        self.money = money
        self.bank = "SC은행"
        self.number = str(random.randint(0,999)).zfill(3) + "-" + str(random.randint(0,99)).zfill(2) + "-" + str(random.randint(0,999999)).zfill(6) #zfill은 지정된 길이로 0으로 채워주는 함수
        self.deposit_count = 0
        self.deposit_log = []  # 입금 내역을 저장할 리스트 추가
        self.withdraw_log = []  # 출금 내역을 저장할 리스트 추가
        Account.account_count += 1  # 생성자와 함께 호출되어 계좌 인스턴스가 생성될 때마다 계좌수를 증가시킴.
        Account.account_list.append(self)
    def get_account_num(self):
        print("계좌개수: ", Account.account_count) # 클래스 변수 출력
    def deposit(self, money):
        if money >= 1:
            self.money += money
            self.deposit_log.append(('입금', money))  # 입금 내역 추가
            self.deposit_count += 1 # 입금 횟수 추가
            if self.deposit_count % 5 == 0: # 5, 10, 15...회마다 이자 지급
                self.money += (self.money * 0.01) # 이자 지급
            print("잔액: ", format(self.money, ","))
            return self.money
        else:
            print("입금은 최소 1원 이상만 가능합니다.") # 입금이 1원 미만이면 오류 메시지 출력
    def withdraw(self, money):
        if self.money >= money: # 잔액이 출금보다 많으면
            self.money -= money     # 잔액에서 출금
            self.withdraw_log.append(('출금', money))  # 출금 내역 추가
            print("잔액: ", format(self.money, ",")) # 잔액 출력
        else:
            print("출금은 잔액 이상으로 할 수 없습니다.") # 잔액보다 출금이 많으면 오류 메시지 출력
    #정보 출력 메서드 : Account 인스턴스에 저장된 정보를 출력하는 display_info() 메서드를 추가하세요. 잔고는 세자리마다 쉼표를 출력하세요.
    def display_info(self): # 정보 출력 메서드
        print("은행이름: ", self.bank) # 은행이름 출력
        print("예금주: ", self.name)   # 예금주 출력
        print("계좌번호: ", self.number) # 계좌번호 출력
        print("초기잔액: ", format(self.money, ",")) # 잔액 출력, 세자리마다 쉼표 출력

    def deposit_history(self): # 입금 내역 출력 메서드
        print("입금 내역") # 입금 내역 출력
        for transaction_type, amount in self.deposit_log:  # 입금 내역 반복 출력
            print("{}: {}".format(transaction_type, amount)) # 입금 내역 출력

    def withdraw_history(self):  # 출금 내역 출력 메서드
        print("출금 내역") # 출금 내역 출력
        for transaction_type, amount in self.withdraw_log: # 출금 내역 반복 출력
            print("{}: {}".format(transaction_type, amount)) # 출금 내역 출력

# 계좌와 입금액 예시
my_money = Account("김근수", 10000) # 계좌 생성
your_money = Account("이근수", 200000)  # 계좌 생성
our_money = Account("박근수", 1000000) # 계좌 생성
print("*"*30)
print("개설된 계좌 개수: ", Account.account_count) # 계좌 개수 출력
print("*"*30)
account_list = Account.account_list # 계좌 리스트 생성
for i in account_list:
    if i.money >= 1000000: # 100만원 이상 계좌 정보 출력
        print("100만원 이상 계좌 정보")
        i.display_info()
        print("*"*30)
print("추가 입금 5회 이후 1% 이자 지급하기")
for i in range(6):
    our_money.deposit(1000000) # 6회 입금
print("*"*30)
print("출금 1000000  메소드 작동 확인")
our_money.withdraw(1000000)  # 출금 메소드 작동 확인
print("*"*30)
our_money.deposit_history() # 입금 내역 출력
print("*"*30)
our_money.withdraw_history() # 출금 내역 출력
print("*"*30)