# AIFFEL Campus Online Code Peer Review Templete
- 코더 : 박근수
- 리뷰어 : 이진영


# PRT(Peer Review Template)
- [O]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - base 모델을 활용한 Transfer learning이 성공적으로 진행되었는가?
```python
# Create the base model from the pre-trained model MobileNetV2
model = tf.keras.applications.MobileNetV2(input_shape=IMG_SHAPE,
                                         include_top=False,
                                         weights='imagenet')

model.trainable = False

global_average_layer = tf.keras.layers.GlobalAveragePooling2D()
dense_layer_1 = tf.keras.layers.Dense(512, activation='relu')
batch_norm_layer_1 = tf.keras.layers.BatchNormalization()
dropout_layer_1 = tf.keras.layers.Dropout(0.5)
dense_layer_2 = tf.keras.layers.Dense(256, activation='relu')
batch_norm_layer_2 = tf.keras.layers.BatchNormalization()
dropout_layer_2 = tf.keras.layers.Dropout(0.5)
prediction_layer = tf.keras.layers.Dense(5, activation='softmax')

# Build the sequential model
base_model = tf.keras.Sequential([
    model,
    global_average_layer,
    dense_layer_1,
    batch_norm_layer_1,
    dropout_layer_1,
    dense_layer_2,
    batch_norm_layer_2,
    dropout_layer_2,
    prediction_layer
])
```
모바일 넷으로 전이학습을 잘 진행하였습니다.
    - 학습과정 및 결과에 대한 설명이 시각화를 포함하여 체계적으로 진행되었는가?
![poster](20230911/IMAGE1.PNG)
![poster](20230911/IMAGE2.PNG)
시각화가 잘 되어있습니다.
- [O]  **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 
주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
    - 회고가 잘 되어있었고 1번노드를 잘 따라온것 같습니다.

      
- [O]  **3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” 
”새로운 시도 또는 추가 실험을 수행”해봤나요?**
    - 코드리뷰를 진행하실 때 vgg로 진행하였지만 정확도가 84%를 넘지 못하여 모바일넷으로 변경하였다고 합니다. 
        
- [O]  **4. 회고를 잘 작성했나요?**
    - 노드를 잘 따라왔고 마지막에 활용하는 부분도 잘 되어있었습니다.
```python
def show_and_predict_image(dirpath, filename, img_size=160):
    filepath = os.path.join(dirpath, filename)
    image = load_img(filepath, target_size=(img_size, img_size))
    plt.imshow(image)
    plt.axis('off')
    image = img_to_array(image).reshape(1, img_size, img_size, 3)
    predictions = (base_model.predict(image)[0])
    prediction_idx = np.argmax((base_model.predict(image)[0]))
    
    flower_lists = metadata.features['label'].names
   
    print(f"This image seems {flower_lists[prediction_idx]} with {np.max(predictions) * 100}%.")
IMG_SIZE = 160
img_dir_path = os.getenv("HOME") + "/PycharmProjects/aiffel5_quest/exploration/aiffel/flowers/images"
face_image_path = os.path.join(img_dir_path, 'my_flowers.jpeg')

face_image = load_img(face_image_path, target_size=(IMG_SIZE, IMG_SIZE))
face_image
```
- [O]  **5. 코드가 간결하고 효율적인가요?**
    - 가벼운 모델인 모바일넷을 활요하였기 때문에 간결하고 효율적이라고 생각합니다.



# 참고 링크 및 코드 개선
    - 코드에서 데이터 경로를 data_dir='~/PycharmProjects/aiffel5_quest/exploration/aiffel/flowers/'로 설정하였습니다. 경로가 정확한지 확인하고, 데이터가 해당 경로에 존재하는지 확인해야 합니다. 경로가 잘못되면 데이터를 불러올 수 없습니다.
