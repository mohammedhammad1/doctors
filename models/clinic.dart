// ignore_for_file: unused_element

import 'doctors.dart';

class Clinic {
  String name;
  String address;
  int WorkingHours;
  int contactNumber;
  List<Doctor> doctors = [];
  Clinic({
    required this.name,
    required this.address,
    required this.WorkingHours,
    required this.contactNumber,
  });
  void addDoctor(Doctor doctor) {
    doctors.add(doctor);
    print(
      "Doctor:${doctor.name} has been added to the clinic at Address:$address with contact number $contactNumber",
    );
    void displayDoctors() {
      print("\n Doctors of $name");
    }

    if (doctors.isEmpty == true) {
      print("No doctors available in the clinic:");
      for (var doc in doctors) {
        doc.displayDoctorInfo();
      }
    } else {
      print("Doctors in the clinic.");
      print("_____________");
    }
  }

  bool isOpen() {
    int currentHour = DateTime.now().hour;
    return currentHour >= 8 && currentHour < WorkingHours;
  }

  void checkIfOpen() {
    if (isOpen()) {
      print("The clinic is open");
      for (var doc in doctors) {
        doc.displayDoctorInfo();
      }
    } else {
      print("The clinic is closed");
    }
  }

  void displayDoctors() {}
}
