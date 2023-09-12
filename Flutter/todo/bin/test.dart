void main() {
IronMan('Tony Stark', 100).shootLaser();
WarMachine('James Rhodes', 100, 'Mark 2').Defend();

}
class IronMan{
  String name;
  int powerLevel;

  IronMan(this.name, this.powerLevel);

  void fly(){
    print('$name is flying!');
  }
  void shootLaser(){
    print('$name is shooting laser!');
  }
}

class WarMachine extends IronMan{
  String armorType;

  WarMachine(String name, int powerLevel,this.armorType): super(name, powerLevel);

  void shootLaser(){
    print('$name is shooting missiles!');
  }

  void Defend(){
    print('$name is using $armorType armor to defend!');
  }
}