void main() {
  print("XD");
}

///TODO: Interfaces
abstract class IsActor {
  void act();
  // void makePeopleLaugh();
}

abstract class IsInertObject {
  void still();
}

///TODO: Class Father Person
abstract class Person implements IsActor {
  String? name;

  Person({this.name});
}

///TODO: Class Son From Person
class Student extends Person {
  String? studentId;

  Student({
    required name,
    required this.studentId,
  }) : super(name: name);

  @override
  void act() {
    print("Act like a Student");
  }
}

class Teacher extends Person {
  String? teacherId;

  Teacher({
    required name,
    required this.teacherId,
  }) : super(name: name);

  @override
  void act() {
    print("Act like a Teacher");
  }
}

///TODO: Class Father Vegetable
class Vegetable {
  bool? edible;

  Vegetable({this.edible});
}

///TODO: Class Son From Vegetable
class Bush extends Vegetable implements IsActor {
  Bush({
    required edible,
  }) : super(edible: edible);

  @override
  void act() {
    print("Act like a Bush");
  }
}

class Tree extends Vegetable implements IsActor {
  Tree({
    required edible,
  }) : super(edible: edible);

  @override
  void act() {
    print("Act like a Tree");
  }
}

///TODO: Class Father Vehicle
class Vehicle implements IsActor, IsInertObject {
  double? horsepower;

  Vehicle({this.horsepower});

  @override
  void act() {
    print("Act like a Vehicle");
  }

  @override
  void still() {
    print("stationary Vehicle");
  }
}

///TODO: Class Son From Vehicle
class Bicycle extends Vehicle {
  Bicycle({
    required horsepower,
  }) : super(horsepower: horsepower);

  @override
  void act() {
    print("Act like a Bicycle");
  }

  @override
  void still() {
    print("stationary Bicycle");
  }
}

class Car extends Vehicle {
  Car({
    required horsepower,
  }) : super(horsepower: horsepower);

  @override
  void act() {
    print("Act like a Car");
  }

  @override
  void still() {
    print("stationary Car");
  }
}
