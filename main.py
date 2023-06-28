# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.


def hi():
    print('hi')

def deco(fn):
    def wrapper():
        print('*'*20)
        fn()
        print('*'*20)
    return wrapper
deco_hey = deco(hi)
deco_hey()