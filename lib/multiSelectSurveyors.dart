import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
class MultiSelectSurveyorsPage extends StatefulWidget {
  const MultiSelectSurveyorsPage();


  @override
  State<MultiSelectSurveyorsPage> createState() => _MultiSelectSurveyorsPageState();
}

class _MultiSelectSurveyorsPageState extends State<MultiSelectSurveyorsPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            // DropDownMultiSelect comes from multiselect
            child: DropDownMultiSelect(
              selected_values_style: TextStyle(color: Colors.white),
              onChanged: (List<String> x) {
                setState(() {
                  selected =x;
                });
              },
              options: ['a' , 'b' , 'c' , 'd'],
              selectedValues: selected,
              whenEmpty: 'Select Something',
            ),
          ),
        ));
  }
}