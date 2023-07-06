def deco(fn):
    def wrap():
        print("before fn")
        fn()
        print("after fn")
    return wrap

@deco
def func():
    print("func1")

func()