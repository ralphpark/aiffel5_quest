
import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# train 데이터 불러오기
train = pd.read_csv('train.csv')
train = pd.get_dummies(train)

# test 데이터 불러오기
test = pd.read_csv('test1.csv')
test = pd.get_dummies(test)

# train 데이터에서 test 데이터에 없는 열 삭제
X_train, y_train = train.drop('price', axis=1), train['price']
X_test = test[X_train.columns]

# 모델 학습
model = LinearRegression()
model.fit(X_train, y_train)

# 모델 예측
y_test = model.predict(X_test)

# 결과 출력
rmse = mean_squared_error(y_test, y_train, squared=False)
r2 = r2_score(y_test, y_train)
print("RMSE:", rmse)
print("R-squared:", r2)

#
# # 라이브러리
# import pandas as pd
# # 데이터 불러오기
# train = pd.read_csv('train.csv')
# test = pd.read_csv('test1.csv')
# test = pd.get_dummies(test)
# train.drop('last_review', axis=1, inplace=True)
# test.drop('last_review', axis=1, inplace=True)
# train['reviews_per_month'].fillna(0, inplace=True)
# train['name'].fillna(0, inplace=True)
# train['host_name'].fillna(0, inplace=True)
# test['reviews_per_month'].fillna(0, inplace=True)
# test['name'].fillna(0, inplace=True)
# test['host_name'].fillna(0, inplace=True)
# train['price_copy'] = train['price'].copy()
# numerical_features = train.dtypes[train.dtypes != 'object'].index
# X_train = train.drop('price_copy', axis=1)
# y_train = train['price_copy']
# from sklearn.linear_model import LinearRegression
# from sklearn.metrics import mean_squared_error, r2_score
#
# model = LinearRegression()
#
# X_test = test
# # 모델 학습 후, 예측 결과로만 출력(y_test) 구성
# model.fit(X_train, y_train)
# y_test = model.predict(X_test)
#
# pred = model.predict(X_test)
# rmse = mean_squared_error(y_test, y_train, squared=False)
# r2 = r2_score(y_test, y_train)
# print("RMSE:", rmse)
# print("R-squared:", r2)