import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wrokout_planner/constants/colors.dart';
import 'package:wrokout_planner/constants/responsive.dart';
import 'package:wrokout_planner/data/user_data.dart';
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                        title: "Warm Up",
                        imageUrl: "assets/images/exercises/downward-facing.png",
                        description: "see more"),
                    ExerciseCard(
                        title: "Equipment",
                        imageUrl: "assets/images/equipments/facial-roller.png",
                        description: "see more"),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                        title: "Excersise",
                        imageUrl: "assets/images/exercises/dragging.png",
                        description: "see more"),
                    ExerciseCard(
                        title: "Streching",
                        imageUrl: "assets/images/exercises/triangle.png",
                        description: "see more"),
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
