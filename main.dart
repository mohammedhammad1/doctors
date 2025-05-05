import 'models/clinic.dart';
import 'models/doctors.dart';
import 'models/patients.dart';
import 'systym/patients_system.dart';

void main() {
  var patients = PatientsSystem();

  var patient1 = Patient(name: "Ali", phoneNumber: 0799963574, age: 30);
  var patient2 = Patient(name: "Salem", phoneNumber: 078888564, age: 25);
  patient1.displayPatientInfo();
  patient2.displayPatientInfo();

  var doctor1 = Doctor(name: "Dr. mohammad", specialization: "Dermatology");
  var doctor2 = Doctor(name: "Dr. Ahmad", specialization: "Cardiology");
  doctor1.displayDoctorInfo();
  doctor2.displayDoctorInfo();

  var clinic1 = Clinic(
    name: "Al-Hekma Clinic",
    address: "Amman, Jordan",
    WorkingHours: 8,
    contactNumber: 0791234567,
  );
  var clinic2 = Clinic(
    name: "yourdoctor",
    address: "Zarqa, Jordan",
    WorkingHours: 8,
    contactNumber: 0788454534,
  );
  clinic1.addDoctor(doctor1);
  clinic1.addDoctor(doctor2);

  patients.assignDoctorToClinic(doctor1, clinic1);
  patients.assignDoctorToClinic(doctor2, clinic2);
  patients.showAlldoctorstoClinics();
}
