import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wrokout_planner/constants/colors.dart';
import 'package:wrokout_planner/constants/responsive.dart';
import 'package:wrokout_planner/models/exercise_model.dart';
import 'package:wrokout_planner/widgets/exercise_card.dart';

class ExcersiseDetails extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDescription;
  final List<Exercise> exerciseList;
  const ExcersiseDetails(
      {super.key,
      required this.exerciseTitle,
      required this.exerciseDescription,
      required this.exerciseList});

  @override
  State<ExcersiseDetails> createState() => _ExcersiseDetailsState();
}

class _ExcersiseDetailsState extends State<ExcersiseDetails> {
  final DateFormat formetter = DateFormat('EEEE,MMMM');
  final DateFormat dayFormat = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formatterDay = dayFormat.format(now);
    return Scaffold(
      appBar: AppBar(
        title: Column(
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
              widget.exerciseTitle,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: kMainBlackColor),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                Text(
                  widget.exerciseDescription,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: kMainBlackColor,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //grid view
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                  ),
                  itemCount: widget.exerciseList.length,
                  itemBuilder: (context, index) {
                    Exercise exercise = widget.exerciseList[index];
                    return ExerciseCard(
                      title: exercise.exerciseName,
                      imageUrl: exercise.exerciseImageUrl,
                      description: "${exercise.noOfMinuites} of workout",
                    );
                  },
                )
              ],
            )),
      ),
    );
  }
}
