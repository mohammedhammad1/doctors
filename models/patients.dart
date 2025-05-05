class Patient {
  String name;
  int phoneNumber;
  int age;

  Patient({required this.name, required this.phoneNumber, required this.age});
  void displayPatientInfo() {
    print("Patient Name: $name");
    print("Phone Number: $phoneNumber");
    print("Age: $age");
  }
}
