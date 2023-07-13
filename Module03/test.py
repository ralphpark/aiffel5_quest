import  pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# 데이터 불러오기
from sklearn.datasets import load_breast_cancer
def make_dataset():
    iris = load_breast_cancer()
    df = pd.DataFrame(iris.data, columns = iris.feature_names)
    df['target'] = iris.target
    X_train, X_test, y_train, y_test = train_test_split(df.drop('target', axis = 1), df['target'], test_size = 0.5, random_state = 1004)
    return X_train, X_test, y_train, y_test
X_train, X_test, y_train, y_test = make_dataset()

# 타겟 확인
print(y_train.value_counts())

# 모델 생성
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
model = DecisionTreeClassifier(criterion='entropy',
                               max_depth=3,
                               min_samples_split=2,
                               min_samples_leaf=2,
                               random_state=0)
model.fit(X_train, y_train)
pred = model.predict(X_test)
print(accuracy_score(y_test, pred))

