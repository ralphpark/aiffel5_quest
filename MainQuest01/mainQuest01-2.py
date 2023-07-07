# csv와 random 모듈을 import 합니다.
import csv
import random

# 핵심 회원들을 담은 사전을 선언합니다.
core_members = {'김건': 0, '김경민': 0, '김소연': 0, '김영신': 0, '박근수': 0, '박영수': 0, '박영준': 0, '서원영': 0, '신지만': 0, '심지안': 0,
                '이규상': 0, '이윤상': 0, '이진영': 0, '임현석': 0, '전요한': 0, '전재영': 0, '조대희': 0}

# Aiffel 클래스를 선언합니다.
class Aiffel:
    # 식별자 카운트 변수를 선언합니다.
    id_count = 0

    # 초기화 메서드를 정의합니다.
    def __init__(self, name, admission_year, generation, course_name, core_members):
        self.name = name
        self.admission_year = admission_year
        self.generation = generation
        self.course_name = course_name
        self.core_members = core_members
        self.student_number = self.assign_student_number()
        self.total_score = 0
        self.quest_input_total = 0
        self.quest_penalty_total = 0
        Aiffel.id_count += 1

    # 학생 번호를 할당하는 메서드를 정의합니다.
    def assign_student_number(self):
        course_type = {'리서치': '1', '코어': '2'}
        sorted_names = sorted(self.core_members.keys())

        for idx, student_name in enumerate(sorted_names):
            if student_name == self.name:
                student_number = str(self.admission_year)[-2:] + str(self.generation).zfill(2) + course_type[
                    self.course_name] + str(idx + 1).zfill(2)
                return student_number

    # 식별자 개수를 반환하는 메서드를 정의합니다.
    def get_id_num(self):
        return Aiffel.id_count

    # 점수를 매기는 메서드를 정의합니다.
    def score(self, points):
        if 1 <= points <= 3:
            self.total_score += points
            self.quest_input_total += points

    # 벌점을 부여하는 메서드를 정의합니다.
    def penalty(self, points):
        self.total_score -= points
        self.quest_penalty_total += points

    # 정보를 표시하는 메서드를 정의합니다.
    def display_info(self):
        data = [self.name, self.student_number, self.course_name, self.total_score, self.quest_input_total, self.quest_penalty_total]
        file_exists = False

        # 파일이 있는지 확인합니다.
        try:
            with open('core_members.csv', 'r') as file:
                file_exists = True
        except FileNotFoundError:
            pass

        # 데이터를 파일에 저장합니다.
        with open('core_members.csv', 'a', newline='') as file:
            writer = csv.writer(file)
            if not file_exists:
                writer.writerow(['이름', '학번', '과정종류', '점수 총점', 'score', 'penalty'])
            writer.writerow(data)
            print(f'데이터 파일 에 저장 : {data}')

    # 학생 정보를 삭제하는 메서드를 정의합니다.
    def delete_student(self, name, membership_file='core_members.csv'):
        with open(membership_file, 'r') as file:
            reader = csv.reader(file)
            lines = list(reader)

        new_lines = [line for line in lines if line[0] != name]

        with open(membership_file, 'w', newline='') as file:
            writer = csv.writer(file)
            writer.writerows(new_lines)

        del core_members[name]
        print(f'{name} 학생의 정보가 삭제되었습니다.')

# Aiffel_Group 클래스를 선언합니다.
class Aiffel_Group(Aiffel):

    # 그룹 이름을 선언합니다.
    group_names = ["상생", "신뢰", "열정", "이끔", "성장", "가치", "공유", "확산"]

    # 그룹을 생성하는 메서드를 정의합니다.
    def create_groups(self, students, group_size):
        random.shuffle(students)
        groups = [students[i:i + group_size] for i in range(0, len(students), group_size)]
        return groups

    # 랜덤 그룹을 생성하는 메서드를 정의합니다.
    def generate_random_groups(self, group_sizes=[2, 3, 4]):
        group_results = {}
        student_list = list(self.core_members.keys())

        for size in group_sizes:
            groups = self.create_groups(student_list, size)
            for i, group in enumerate(groups):
                group_name = self.group_names[i]
                group_results[group_name] = group

        # 결과를 출력합니다.
        for group_name, group_members in group_results.items():
            print(f"{group_name}: {', '.join(group_members)}")

        return group_results


# Aiffel_Guild 클래스를 선언합니다.
class Aiffel_Guild(Aiffel):

    # 길드 이름을 선언합니다.
    guild_names = ["힌튼", "알트만", "응", "하사비스"]
    guild_scores = {k: 0 for k in guild_names}

    # 그룹을 생성하는 메서드를 정의합니다.
    def create_groups(self):
        students = list(self.core_members.keys())
        random.shuffle(students)
        groups = []
        for i in range(len(self.guild_names)):
            groups.append([])

        for i, student in enumerate(students):
            groups[i % len(self.guild_names)].append(student)

        return groups

    # 랜덤 그룹을 생성하는 메서드를 정의합니다.
    def generate_random_groups(self):
        group_results = {}
        groups = self.create_groups()

        for i, group in enumerate(groups):
            guild_name = self.guild_names[i % len(self.guild_names)]
            group_results[guild_name] = group

        # 결과를 출력합니다.
        for guild_name, group_members in group_results.items():
            print(f"{guild_name}: {', '.join(group_members)}")

        return group_results



print("학번 생성")
student1 = Aiffel('김건', 2023, 25, '코어', core_members)
student2 = Aiffel('김경민', 2023, 25, '코어', core_members)
student3 = Aiffel('김소연', 2023, 25, '코어', core_members)
student4 = Aiffel('김영신', 2023, 25, '코어', core_members)
student5 = Aiffel('박근수', 2023, 25, '코어', core_members)
student6 = Aiffel('박영수', 2023, 25, '코어', core_members)
student7 = Aiffel('박영준', 2023, 25, '코어', core_members)
student8 = Aiffel('서원영', 2023, 25, '코어', core_members)
student9 = Aiffel('신지만', 2023, 25, '코어', core_members)
student10 = Aiffel('심지안', 2023, 25, '코어', core_members)
student11 = Aiffel('이규상', 2023, 25, '코어', core_members)
student12 = Aiffel('이윤상', 2023, 25, '코어', core_members)
student13 = Aiffel('이진영', 2023, 25, '코어', core_members)
student14 = Aiffel('임현석', 2023, 25, '코어', core_members)
student15 = Aiffel('전요한', 2023, 25, '코어', core_members)
student16 = Aiffel('전재영', 2023, 25, '코어', core_members)
student17 = Aiffel('조대희', 2023, 25, '코어', core_members)

print(student1.student_number)
print("*" * 30)
print("생성된 학번의 개수 출력 예시")
print(student2.get_id_num())  # 출력: 2
print("*" * 30)
print("점수 부여 예시")
student1.score(2)
print(student1.student_number,":",student1.total_score)
print(student2.student_number,":",student2.total_score)
print(student3.student_number,":",student3.total_score)
print("*" * 30)
print("벌점 부여 예시")
student1.penalty(4)
print(student1.student_number,":",student1.total_score)  # 출력: -1
print("*" * 30)
print("CSV 파일에 저장 예시")
student1.display_info()
student2.display_info()
student3.display_info()
student4.display_info()
student5.display_info()
student6.display_info()
student7.display_info()
student8.display_info()
student9.display_info()
student10.display_info()
student11.display_info()
student12.display_info()
student13.display_info()
student14.display_info()
student15.display_info()
student16.display_info()
student17.display_info()
print("*" * 30)
student2.delete_student('김경민')
student4.delete_student('김영신')
print("*" * 30)
# 2,3,4인 그루핑
grouping_student = Aiffel_Group(student1.name, student1.admission_year, student1.generation, student1.course_name, student1.core_members)
# 사용자 입력 받기
group_size = int(input("몇 명을 그룹으로 묶으시겠습니까? "))
# 입력받은 인원 수 만큼 그룹 생성 실행
print(f"{group_size}명 그룹:")
grouping_student.generate_random_groups(group_sizes=[group_size])
print("*" * 30)
guild_student = Aiffel_Guild(student1.name, student1.admission_year, student1.generation, student1.course_name, student1.core_members)

# 그룹 생성 실행
print("길드 그룹:")
guild_student.generate_random_groups()
print("*" * 30)

