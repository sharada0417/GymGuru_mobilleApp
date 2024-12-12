import 'package:wrokout_planner/models/equipment_model.dart';
import 'package:wrokout_planner/models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExerciseCompleted = 0;
  int totalequipmentsHandOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentlist;
  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.equipmentlist,
    required this.favExerciseList,
    required this.favEquipmentList,
  });
}
