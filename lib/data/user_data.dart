import 'package:wrokout_planner/models/equipment_model.dart';
import 'package:wrokout_planner/models/exercise_model.dart';
import 'package:wrokout_planner/models/user_model.dart';

User user = User(
    userId: "123456",
    fullName: "Kamal perera",
    gender: "Male",
    address: "123 Main St, colombo , sriLanka",
    age: 278,
    description: "Personal coach",
    exerciseList: [
      Exercise(
        exerciseName: "Squats",
        exerciseImageUrl: "assets/images/exercises/downward-facing.png",
        noOfMinuites: 20,
        id: 1,
        completed: false,
      ),
      Exercise(
        exerciseName: "Plank",
        exerciseImageUrl: "assets/images/exercises/dragging.png",
        noOfMinuites: 30,
        id: 2,
        completed: false,
      ),
    ],
    equipmentlist: [
      Equipment(
        id: 1,
        equipmentName: "Resistance Bands",
        equipmentDescription: "Elastic bands used for resistance exercises.",
        equipmentImageUrl: "assets/images/equipments/checklist.png",
        noOfMinuites: 20,
        handOvered: false,
        noOfCalories: 15,
      ),
      Equipment(
        id: 2,
        equipmentName: "Yoga Mat",
        equipmentDescription: "A mat for practicing yoga and floor exercises.",
        equipmentImageUrl: "assets/images/equipments/dumbbell.png",
        noOfMinuites: 60,
        handOvered: false,
        noOfCalories: 30,
      ),
    ],
    favExerciseList: [
      Exercise(
        exerciseName: "Jumping Jacks",
        exerciseImageUrl: "assets/images/exercises/hunch_back.png",
        noOfMinuites: 10,
        completed: false,
        id: 3,
      ),
      Exercise(
        exerciseName: "Crunches",
        exerciseImageUrl: "assets/images/exercises/treadmill-machine_men.png",
        noOfMinuites: 15,
        id: 4,
        completed: false,
      ),
    ],
    favEquipmentList: [
      Equipment(
        id: 4,
        equipmentName: "Kettlebells",
        equipmentDescription:
            "Weights with a handle used for strength, endurance, and flexibility training.",
        equipmentImageUrl: "assets/images/equipments/facial-roller.png",
        noOfMinuites: 45,
        handOvered: false,
        noOfCalories: 25,
      ),
      Equipment(
        id: 5,
        equipmentName: "Exercise Ball",
        equipmentDescription:
            "A large, inflatable ball used for core and stability exercises.",
        equipmentImageUrl: "assets/images/equipments/stationary-bike.png",
        noOfMinuites: 25,
        handOvered: false,
        noOfCalories: 15,
      ),
    ]);
