
def deco(fn) :
    def wrapper():
        print('*'*20)
        fn()
        print('*'*20)
    return wrapper

@deco
def hi():
    print("hi")


print(hi())