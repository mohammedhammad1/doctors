import '../models/clinic.dart';
import '../models/doctors.dart';
import '../models/patients.dart';

class PatientsSystem {
  List<Patient> thepatients = [];
  List<Doctor> thedoctors = [];
  List<Clinic> theclinics = [];

  void adddoctor(Doctor doctor) {
    thedoctors.add(doctor);
    print("Doctor ${doctor.name} has been added to the system.");
  }

  void addclinic(Clinic clinic) {
    theclinics.add(clinic);
    print("Clinic ${clinic.name} has been added to the system.");
  }

  void addpatient(Patient patient) {
    thepatients.add(patient);
    print("Patient ${patient.name} has been added to the system.");
  }

  void assignDoctorToClinic(Doctor doctor, Clinic clinic) {
    clinic.addDoctor(doctor);
  }

  void showAlldoctorstoClinics() {
    for (var clinic in theclinics) {
      clinic.displayDoctors();
    }
  }
}
