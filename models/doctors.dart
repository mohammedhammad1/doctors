class Doctor {
  String name;
  String specialization;

  Doctor({required this.name, required this.specialization});
  void displayDoctorInfo() {
    print("Doctor: $name, Doctor: $specialization");
  }
}
