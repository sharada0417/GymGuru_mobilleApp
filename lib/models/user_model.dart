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

//methods

//method to add new exercise to the execiseList
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  //method to remove the excersise fro the excersise List
  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  //method to add new fav exersise to the favExerciseList
  void addFavExerciseList(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  void removeFavExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }
}
