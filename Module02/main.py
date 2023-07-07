#아이펠 캠퍼스에서는 그루들에게 학번을 부여하고 퀘스트 점수를 관리하고 있습니다. 이제부터 학번과 점수를 관리할 수 있는 Aiffel 클래스를 만들어보도록 하겠습니다.
#이니셜라이저에서는 아래와 같은 4개의 인자를 받습니다.
#이름, 입학연도, 기수, 과정명
#학번은 7자리로 이뤄져있고 학번 생성 규칙은 아래와 같습니다
#YYNNCXX
#YY : 연도 마지막 두 자리 (ex. 2023년은 23) NN : 기수 (온라인 4기는 25기) C : 과정 종류 (리서치=1, 코어=2) XX : 가나다순 번호

# 코어 명단(딕셔너리)을 입력받아 학번을 부여하는 초기화 메서드를 작성해보세요


import random

class Aiffel:
    core_dic = {"김건": 0, "김경민": 0, "김소연": 0, "김영신": 0, "박근수": 0, "박영수": 0, "박영준": 0, "서원영": 0, "신지만": 0, "심지안": 0, "이규상": 0, "이윤상": 0, "이진영": 0,"임현석": 0, "전요한": 0, "전재영": 0, "조대희": 0}
    def __init__(self, name, year, term, course, number):
        self.name = name
        self.year = year
        self.term = term
        self.course = course
        self.number = number
        self.student_number = str(self.year)[-2:] + str(self.term) + str(self.course) + str(self.number).zfill(2)
#Aiffel 클래스로부터 생성된 학번의 개수를 출력하는 get_id_num() 메서드를 추가하세요
    def get_id_num(self):
        return len(self.core_dic)
    #Aiffel 클래스에 퀘스트 점수 입력을 위한 score 메서드를 추가하세요. 점수는 +1점 부터 +3점까지만 가능합니다.
    def score(self, score):
        if score > 3:
            print("점수는 3점까지만 가능합니다.")
        else:
            self.core_dic[self.name] += score
            print("점수가 입력되었습니다.")
# Aiffel 클래스에 퀘스트 점수 차감을 위한 penalty 메서드를 추가하세요. penalty로 인한 잔여 점수는 음수가 가능합니다.
    def penalty(self, penalty):
        self.core_dic[self.name] -= penalty
        print("점수가 차감되었습니다.")
        #Aiffel 인스턴스에 저장된 정보를 출력하는 display_info() 메서드를 추가하세요.
    def display_info(self):
        print(f"이름 : {self.name}")
        print(f"학번 : {self.student_number}")
        print(f"과정 종류 : {self.course}")
        print(f"퀘스트 점수 총점 : {self.core_dic[self.name]}")
        print(f"퀘스트 입력 총점 : {self.core_dic[self.name]}")
        print(f"퀘스트 penalty 총합 : {self.core_dic[self.name]}")
    #중도포기자를 관리하기 위해 그루 정보를 삭제하는 메서드를 추가해보세요. 해당 메서드를 호출하면 명단이 갱신되어야 합니다.
    def drop_out(self):
        del self.core_dic[self.name]

class Aiffel_Group(Aiffel):
    group_names = ["상생", "신뢰", "열정", "이끔", "성장", "가치", "공유", "확산"]

    def random_grouping(self, num):
        members = list(self.core_dic.keys())
        random.shuffle(members)
        groups = [[] for _ in range(len(self.group_names))]

        for i in range(0, len(members), num):
            for j, group in enumerate(groups):
                if len(group) < num:
                    groups[j].extend(members[i:i+num])
                    break

        for group_name, group_members in zip(self.group_names, groups):
            if group_members:
                print(f'{group_name} 그룹: {", ".join(group_members)}')

class Aiffel_Guild(Aiffel):
    guild_names = ["힌튼", "알트만", "응", "하사비스"]

    def random_grouping(self):
        members = list(self.core_dic.keys())
        random.shuffle(members)
        guilds = {name: [] for name in self.guild_names}

        for i, member in enumerate(members):
            guilds[self.guild_names[i % len(self.guild_names)]].append(member)

        for guild_name, guild_members in guilds.items():
            if guild_members:
                print(f'{guild_name} 길드: {", ".join(guild_members)}')

    def guild_score(self, guild_name, score):
        if guild_name not in self.guild_names:
            print("길드 이름이 존재하지 않습니다.")
            return

        self.guild_score[guild_name] += score
        print(f'{guild_name} 길드의 스코어가 {self.guild_scores[guild_name]}점으로 변경되었습니다.')

        # Update individual member scores
        for member, member_guild in self.guild_membership.items():
            if member_guild == guild_name:
                self.score(score)
                self.penalty(-score)

# 김영신 제거
kim_gun = Aiffel('김영신', 2021, 2, "AI", 1)
kim_gun.drop_out()
# 김경민 제거
kim_kyungmin = Aiffel('김경민', 2021, 2, "AI", 2)
kim_kyungmin.drop_out()
# 결과 출력
print(Aiffel.core_dic)

# Create an instance of Aiffel_Group
aiffel_group = Aiffel_Group('이진영', 2021, 2, "AI", 1)

# Test random_grouping method
aiffel_group.random_grouping(2)
print()
aiffel_group.random_grouping(3)
print()
aiffel_group.random_grouping(4)

# Create an instance of Aiffel_Guild
aiffel_guild = Aiffel_Guild('이진영', 2021, 2, "AI", 1)
print()
# Test random_grouping method
aiffel_guild.random_grouping()
# Create an instance of Aiffel_Guild
aiffel_guild = Aiffel_Guild('이진영', 2021, 2, "AI", 1)


# Create Aiffel instances for 박영수, 박근수, 심지안
park_youngsu = Aiffel('박영수', 2021, 2, "AI", 1)
park_geunsu = Aiffel('박근수', 2021, 2, "AI", 2)
sim_jian = Aiffel('심지안', 2021, 2, "AI", 3)

# Set initial scores for 박영수, 박근수, 심지안 그루
park_youngsu.score(2)
park_geunsu.score(3)
sim_jian.score(1)

# Create an instance of Aiffel_Guild
aiffel_guild = Aiffel_Guild('이진영', 2021, 2, "AI", 1)

# Assign 박영수, 박근수, 심지안 그루 to the guilds
aiffel_guild.guild_membership = {'박영수': '힌튼', '심지안': '힌튼', '박근수': '응'}

# Update guild scores
aiffel_guild.guild_score('힌튼', -1)
aiffel_guild.guild_score('응', 1)
print()

# Check updated individual member scores
print(f"박영수 점수: {park_youngsu.core_dic['박영수']}")
print(f"박근수 점수: {park_geunsu.core_dic['박근수']}")
print(f"심지안 점수: {sim_jian.core_dic['심지안']}")

# Check updated guild scores
print(f"힌튼 길드 점수: {aiffel_guild.guild_score['힌튼']}")
print(f"응 길드 점수: {aiffel_guild.guild_score['응']}")
print(f"하사비스 길드 점수: {aiffel_guild.guild_score['하사비스']}")
print(f"알트만 길드 점수: {aiffel_guild.guild_score['알트만']}")


    #display_info 메서드를 호출하면 이름, 학번, 과정종류, 퀘스트 점수 총점, 퀘스트 입력 총점, 퀘스트 penalty 총합이 새로운 코어 명단(csv파일)로 출력되어야 합니다.