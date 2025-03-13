import 'package:flutter/material.dart';
import 'package:wrokout_planner/constants/colors.dart';
import 'package:wrokout_planner/constants/responsive.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseImageUrl;
  final int noOfMinitues;

  const AddExerciseCard(
      {super.key,
      required this.exerciseTitle,
      required this.noOfMinitues,
      required this.exerciseImageUrl});

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kCardBgColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 2,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              widget.exerciseImageUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${widget.noOfMinitues.toString()} Minitues",
              style: const TextStyle(
                fontSize: 16,
                color: kSubtitleColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kSubtitleColor.withOpacity(0.4),
                      ),
                      child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 30,
                                color: KMainDarkGreenColor,
                              )))),
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kSubtitleColor.withOpacity(0.4),
                      ),
                      child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 30,
                                color: KMainRedColor,
                              ))))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
