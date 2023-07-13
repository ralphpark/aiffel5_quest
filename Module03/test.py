# 다음은 이번 노드에서 학습했던 데이터를 로드하고,
# 랜덤포레스트, xgboost 모델을 각각 돌려보는 과정입니다.
# 다시 보며 그 과정을 복습하고 실행해보세요.

# 데이터 로드
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.datasets import load_breast_cancer
def make_dataset():
    bc = load_breast_cancer()
    df = pd.DataFrame(bc.data, columns=bc.feature_names)
    df['target'] = bc.target
    X_train, X_test, y_train, y_test = train_test_split(
        df.drop('target', axis=1), df['target'], test_size=0.5, random_state=1004)
    return X_train, X_test, y_train, y_test

X_train, X_test, y_train, y_test = make_dataset()

# 랜덤포레스트
from sklearn.ensemble import RandomForestClassifier
model1 = RandomForestClassifier(
    n_estimators=500,
    max_depth=5,
    random_state=0)
model1.fit(X_train, y_train)
pred1 = model1.predict_proba(X_test)
print(accuracy_score(y_test, pred1[:,1].round()))

# xgboost
from xgboost import XGBClassifier
model2 = XGBClassifier(
    n_estimators=500,
    max_depth=5,
    random_state=0,
    eval_metric='logloss',
    objective = 'binary:logistic',
    use_label_encoder=False)
model2.fit(X_train, y_train)
pred2 = model2.predict_proba(X_test)
print(accuracy_score(y_test, pred2[:,1].round()))


# 위 랜덤포레스트, xgboost 모델을 앙상블하여 그 결과를 확인해보세요.
# (각 모델의 가중치는 동일하게 해주세요.)
# 힌트 : 앙상블은 모델을 합친 것으로, 결국 pred1,pred2을 평균 내서 pred_ensemble을 설정하면 됩니다.
pred_ensemble = (pred1 + pred2) / 2
print(accuracy_score(y_test, pred_ensemble[:,1].round()))