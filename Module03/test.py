
import pandas as pd
# 데이터 불러오기
train = pd.read_csv('train.csv')
test = pd.read_csv('test1.csv')

# 결측치 컬럼 삭제(last_review)
train = train.drop(columns=['last_review'], axis=1)
test = test.drop(columns=['last_review'], axis=1)

# 결측치 채우기
train['reviews_per_month'] = train['reviews_per_month'].fillna(0)
test['reviews_per_month'] = test['reviews_per_month'].fillna(0)

# 가격 값 복사
target = train['price']
train = train.drop(columns=['price'])

train = train.select_dtypes(include=['float64', 'int64'])
test = test.select_dtypes(include=['float64', 'int64'])

# 데이터 분할
from sklearn.model_selection import train_test_split
# 학습 데이터를 훈련 세트와 검증 세트로 분할
X_train, X_test, y_train, y_test = train_test_split(train, target, test_size=0.2, random_state=2022)
print(X_train.shape, X_test.shape, y_train.shape, y_test.shape)

# 머신러닝(회귀)
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

model = LinearRegression()
model.fit(X_train, y_train)

# 검증 세트에 대한 예측 및 성능 측정
pred = model.predict(X_test)
mse = mean_squared_error(y_test, pred)

print(mse)

# 릿지 회귀
from sklearn.linear_model import Ridge
model = Ridge(alpha=1)
model.fit(X_train, y_train)
pred = model.predict(X_test)
mse = mean_squared_error(y_test, pred)
print(mse)

# 라쏘 회귀
from sklearn.linear_model import Lasso
model = Lasso(alpha=1) # 기본값이 1
model.fit(X_train, y_train)
pred = model.predict(X_test)
mse = mean_squared_error(y_test, pred)
print(mse)

# 엘라스틱넷 회귀
from sklearn.linear_model import ElasticNet
model = ElasticNet(alpha=1) # 기본값이 1
model.fit(X_train, y_train)
pred = model.predict(X_test)
mse = mean_squared_error(y_test, pred)
print(mse)

# 랜덤 포레스트 회귀
from sklearn.ensemble import RandomForestRegressor
model = RandomForestRegressor(random_state=2022)
model.fit(X_train, y_train)
pred = model.predict(X_test)
mse = mean_squared_error(y_test, pred)
print(mse)

# Xgboost
from xgboost import XGBRegressor
model = XGBRegressor(random_state=2022)
model.fit(X_train, y_train)
pred = model.predict(X_test)
mse = mean_squared_error(y_test, pred)
print(mse)

# test 데이터 예측 및 평가
y_test = pd.read_csv('y_test.csv')

# Xgboost
pred = model.predict(test)
mse = mean_squared_error(y_test, pred)
print(mse)