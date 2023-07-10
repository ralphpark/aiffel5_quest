# Q. 감사했던 사람을 떠올리며 '사람', '감사한 내용'의 칼럼을 갖고 있는 데이터프레임을 만들어보고, 
# csv 파일로 저장해주세요.
# 데이터는 3개 이상 입력해주세요.

import pandas as pd
human_list = ['엄마', '아버지', '와이프']
thanks_list = ['항상 고맙고 사랑해', '고맙고 사랑해', '고맙고 사랑해']
df = pd.D
ataFrame({'human': human_list, 'thanks': thanks_list})
df.to_csv('thanks.csv', index=False)
print(df)