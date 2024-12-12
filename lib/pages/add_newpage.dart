import 'package:flutter/material.dart';

class AddNewpage extends StatefulWidget {
  const AddNewpage({super.key});

  @override
  State<AddNewpage> createState() => _AddNewpageState();
}

class _AddNewpageState extends State<AddNewpage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Text("Add new page"),
          ),
        ),
      ),
    );
  }
}
