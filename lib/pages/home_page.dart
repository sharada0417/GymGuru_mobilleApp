import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wrokout_planner/constants/colors.dart';
import 'package:wrokout_planner/constants/responsive.dart';
import 'package:wrokout_planner/data/equipment_data.dart';
import 'package:wrokout_planner/data/exercise_data.dart';
import 'package:wrokout_planner/data/user_data.dart';
import 'package:wrokout_planner/pages/equipment.page.dart';
import 'package:wrokout_planner/pages/excersie_details.dart';
import 'package:wrokout_planner/widgets/exercise_card.dart';
import 'package:wrokout_planner/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Date and time Formatters
  final DateFormat formetter = DateFormat('EEEE,MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //User data
  final userData = user;

  //exercise and equipment data
  final exerciseList = ExerciseData().exerciseList;
  final equipmentData = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formatterDay = dayFormat.format(now);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: kSubtitleColor),
                ),
                Text(
                  userData.fullName,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: kMainBlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProgressCard(progressValue: 0.5, total: 100),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Today Activity",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExcersiseDetails(
                                    exerciseTitle: "Exersise",
                                    exerciseDescription:
                                        " A brief session before exercise to prepare the body. It includes light cardio, dynamic stretches, and mobility exercises to increase blood flow, loosen muscles, and enhance flexibility. This helps prevent injuries and improves performance.",
                                    exerciseList: exerciseList)));
                      },
                      child: const ExerciseCard(
                          title: "  Exersise",
                          imageUrl:
                              "assets/images/exercises/downward-facing.png",
                          description: "see more"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EquipmentDetailsPage(
                                      equipmentTitle: "Equipments",
                                      equipmentDescription:
                                          "Gym equipment includes machines, weights, and tools designed for strength training, cardio, and flexibility exercises. Common equipment includes dumbbells, barbells, treadmills, resistance bands, and rowing machines. Each piece targets specific muscle groups and helps improve fitness levels.",
                                      equipmentList: equipmentData,
                                    )));
                      },
                      child: const ExerciseCard(
                          title: "Equipment",
                          imageUrl:
                              "assets/images/equipments/facial-roller.png",
                          description: "see more"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExcersiseDetails(
                                    exerciseTitle: "Excersise",
                                    exerciseDescription:
                                        " A brief session before exercise to prepare the body. It includes light cardio, dynamic stretches, and mobility exercises to increase blood flow, loosen muscles, and enhance flexibility. This helps prevent injuries and improves performance.",
                                    exerciseList: exerciseList)));
                      },
                      child: const ExerciseCard(
                          title: "Excersise",
                          imageUrl: "assets/images/exercises/dragging.png",
                          description: "see more"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExcersiseDetails(
                                    exerciseTitle: "Streching",
                                    exerciseDescription:
                                        " A brief session before exercise to prepare the body. It includes light cardio, dynamic stretches, and mobility exercises to increase blood flow, loosen muscles, and enhance flexibility. This helps prevent injuries and improves performance.",
                                    exerciseList: exerciseList)));
                      },
                      child: const ExerciseCard(
                          title: "Streching",
                          imageUrl: "assets/images/exercises/triangle.png",
                          description: "see more"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
