void main() {
  print("Object Oriented Programming.\n\n");

  Train t1 = Train.create("Sojib", 20, "name");
  t1.printInfo();

  Train t2 = Train();
  t2.printInfo();
}

class Train {
  String name = "Kishoreganj Express";
  int length = 40;
  String start_end = "7:15 - 10:30";

  Train();

  Train.create(this.name, this.length, this.start_end);

  void printInfo() {
    print(name);
    print(length);
    print(start_end);
  }
}
// Similler class operations as c++,java,etc
