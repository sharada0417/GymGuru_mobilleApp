import 'package:flutter/material.dart';
import 'package:wrokout_planner/constants/colors.dart';
import 'package:wrokout_planner/constants/responsive.dart';
import 'package:wrokout_planner/data/exercise_data.dart';
import 'package:wrokout_planner/data/user_data.dart';
import 'package:wrokout_planner/models/exercise_model.dart';
import 'package:wrokout_planner/widgets/add_exercise_card.dart';

class AddNewpage extends StatefulWidget {
  const AddNewpage({super.key});

  @override
  State<AddNewpage> createState() => _AddNewpageState();
}

class _AddNewpageState extends State<AddNewpage> {
  //import the user from user data
  final userData = user;

  //exerciseList
  final execiseList = ExerciseData().exerciseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello , ${userData.fullName}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  "Lets Add some workouts and Equipment for today",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: KMainColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "All Exercise",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.47,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: execiseList.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = execiseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        exerciseImageUrl: exercise.exerciseImageUrl,
                        noOfMinitues: exercise.noOfMinuites,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
