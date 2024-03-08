class Person {
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address);
  void printDetails() {
    print("Name: $name, Age: $age, Address: $address");
  }
}
void main() {
  Person person1 = Person("Gedion Mekbeb", 20, "Bethel");
  Person person2 = Person("Professor Mekbeb Afework", 64, "Bethel");
  print("Details of Person 1: ");
  person1.printDetails();
  print("Details of Person 2: ");
  person2.printDetails();
  person1.age = 21;
  person2.address = "Weyra";
  print("\nUpdated Person 1 details:");
  person1.printDetails();
  print("\nUpdated Person 2 details:");
  person2.printDetails();
}
