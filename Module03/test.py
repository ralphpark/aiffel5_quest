# 데이터 로드
def make_dataset2():
    dataset = load_diabetes()
    df = pd.DataFrame(dataset.data, columns=dataset.feature_names)
    df['target'] = dataset.target
    return df.drop('target', axis=1), df['target']
X, y = make_dataset2()
# Q. 위 데이터로 엘라스틱넷 회귀를 돌려볼 예정입니다.
# RandomizedSearchCV 를 활용하여 다음 두 하이퍼파라미터 중 최적을 찾고,
# 'alpha':[0.0001, 0.001, 0.01, 0.1, 1]
# 'l1_ratio':[0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
# 최적의 하이퍼파라미터로 모델을 돌려 rmse를 측정해주세요.

params={# [[YOUR CODE]]}

from sklearn.linear_model import ElasticNet
model = ElasticNet()
model.fit(# [[YOUR CODE]])
pred = model.predict(# [[YOUR CODE]])

grid = RandomizedSearchCV(# [[YOUR CODE]])
grid.fit(# [[YOUR CODE]])

# 최적의 하이퍼파라미터 찾기
grid.best_params_


# 찾은 최적의 하이퍼파라미터로 모델을 돌려 rmse를 측정하세요.
model = ElasticNet(# [[YOUR CODE]])
model.fit(# [[YOUR CODE]])
pred = model.predict(# [[YOUR CODE]])

import numpy as np
# [[YOUR CODE]]