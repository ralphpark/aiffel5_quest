# AIFFEL Campus Online 5th Code Peer Review Templete

- 코더 : 박근수  
- 리뷰어 : 박영준

# PRT(PeerReviewTemplate)

- [O] **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
  - 노드를 활용한 코드를 통해 완성된 결과물을 출력하는 코드를 확인함.
  - loss, accuracy 그래프를 통해 학습이 잘 진행되었음을 확인
  - 평균 accuracy 80% 를 찍었으며 목표인 50%는 달성이 어려움 
- [O] **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된
      주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
  - 주석을 통해 내용의 이해가 가능하고 흐름을 파악할 수 있었습니다.
- [O] **3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나”
      ”새로운 시도 또는 추가 실험을 수행”해봤나요?**
  - 별다른 에러는 확인하지 못하였으며 레이어 층을 늘리는 시도를 확인했습니다.
    `
- [O] **4. 회고를 잘 작성했나요?**

  - 시간적인 부분이 부족하다는 내용과 또 다른 시도를 진행하고 싶어하는 회고를 작성하였습니다.
  - 이 외에 앞으로의 시도할 만한 내용에 대한 회고도 적혀있습니다. 

- [X] **5. 코드가 간결하고 효율적인가요?**

  - GAN이라는 내용이 어려웠기에 코드가 길고 복잡했습니다.
  - 코드 간 부분은 되어 있어 보기에는 무리가 없었습니다.
  - 효율적인 부분에 대해서는 확인이 어려웠습니다.

# 참고 링크 및 코드 개선

```python
# 코드 리뷰 시 참고한 링크가 있다면 링크와 간략한 설명을 첨부합니다.
# 모델 훈련의 세미콜론: 모델을 훈련시키는 줄에 작은 오타가 있습니다. 쉼표(,) 대신 세미콜론(;)이 있습니다. epochs=epochs; 대신 epochs=epochs여야 합니다.
# 시각화 루프: 처음 5개의 이미지를 시각화하는 루프에서 plt.show() 뒤에 break 문을 추가하여 첫 번째 반복 후에 루프가 종료되도록 하는 것이 좋습니다.
# 플로팅 함수: matplotlib.pyplot을 두 번 가져왔습니다. 한 번만 가져오면 됩니다.

# 수정된 코드
import tensorflow as tf
import tensorflow_datasets as tfds
from tensorflow.keras.applications import ResNet50
from tensorflow.keras.layers import Dense, GlobalAveragePooling2D
from tensorflow.keras.models import Model
from tensorflow.keras.utils import plot_model
import matplotlib.pyplot as plt

# ... (rest of your code) ...

def preprocess_data(data):
    """
    Preprocesses data for training.

    Args:
        data (dict): Dictionary containing 'image' and 'label'.

    Returns:
        tuple: Tuple containing preprocessed image and one-hot encoded label.
    """
    # ... (rest of your code) ...

# ... (rest of your code) ...

# Training the model
epochs = 10

history = model.fit(
    train_batches,
    epochs=epochs,
    validation_data=validation_batches
)

# ... (rest of your code) ...

# Model evaluation
test_loss, test_accuracy = model.evaluate(test_batches)
print(f'Test Loss: {test_loss:.4f}')
print(f'Test Accuracy: {test_accuracy:.4f}')
```
