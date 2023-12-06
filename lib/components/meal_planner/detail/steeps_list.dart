// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SteepsList extends StatefulWidget {
  const SteepsList({super.key});

  @override
  _SteepsListState createState() => _SteepsListState();
}

class _SteepsListState extends State<SteepsList> {
  int currentStep = 0;
  List<Step> steps = [];

  @override
  void initState() {
    super.initState();
    _initializeSteps();
  }

  void _initializeSteps() {
    steps = [
      const Step(
        title: Text('Step 1'),
        content: Text('Prepare all of ingredients that needed.'),
        isActive: false,
      ),
      const Step(
        title: Text('Step 2'),
        content: Text('Mix flour, sugar, salt, and banking powder.'),
        isActive: false,
      ),
      const Step(
        title: Text('Step 3'),
        content: Text('in a separate place, mix the eggs and liquid milk until blended.'),
        isActive: false,
      ),
      const Step(
        title: Text('Step 4'),
        content: Text('Add the yeast to the mixture and let it rest.'),
        isActive: false,
      ),
      const Step(
        title: Text('Step 5'),
        content: Text('Bake for 30 minutes over medium heat until golden brown.'),
        isActive: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        currentStep: currentStep,
        onStepContinue: () {
          setState(() {
            currentStep < steps.length - 1 ? currentStep += 1 : null;
          });
        },
        onStepCancel: () {
          setState(() {
            currentStep > 0 ? currentStep -= 1 : null;
          });
        },
        steps: steps,
      ),
    );
  }
}

