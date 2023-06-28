nums = list(range(1, 11))
result = 0
for i in range(10):
    result+= nums.pop()
print(result)


dict_uni  = {'a': 97, 'b': 98, 'c': 99, 'd': 100, 'e': 101, 'f': 102}
dict_uni.popitem()
print(dict_uni)




parks_age = [12, 18, 21, 22, 25, 27, 30, 32, 35]
parks_dic = dict.fromkeys(parks_age, 'age')
print(parks_dic)