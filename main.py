# [Playground] 좋아하는 영화의 주인공 이름을 넣어서 Aiffel 클래스의 객체를 만들어보세요!
class Aiffel :
    def __init__(self,actor):
        self.actor = actor
    def movie_actor(self):
        print(f"내가 좋아하는 영화 주인공은 {self.actor} 입니다.")

like_movie = Aiffel('로버트 다우니 주니어')
like_movie.movie_actor()

