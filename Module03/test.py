import numpy as np
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import GridSearchCV
from sklearn.metrics import accuracy_score

# 주어진 데이터와 라벨을 생성하세요.
# X_train, X_test, y_train, y_test = ...

param_grid = {
    'criterion': ['entropy'],
    'max_depth': np.arange(1, 20),           # 같이 변경할 수 있는 범위 설정
    'min_samples_split': np.arange(2, 12),   # 같이 변경할 수 있는 범위 설정
    'min_samples_leaf': np.arange(1, 10)     # 같이 변경할 수 있는 범위 설정
}

model = DecisionTreeClassifier(random_state=0)
grid_search = GridSearchCV(estimator=model, param_grid=param_grid, scoring='accuracy', n_jobs=-1, cv=5)
grid_search.fit(X_train, y_train)

best_params = grid_search.best_params_
best_model = grid_search.best_estimator_

print("최적 하이퍼파라미터:", best_params)

pred = best_model.predict(X_test)
print("최적 모델의 정확도:", accuracy_score(y_test, pred))