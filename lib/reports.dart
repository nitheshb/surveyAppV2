import 'package:flutter/material.dart';
import 'package:surveyhub/Components.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: [
              ProfileBar(
                usertype: "Super User",
                name: "Monesh D",
              ),
              Column(
                // physics: const AlwaysScrollableScrollPhysics(),
                // shrinkWrap: true,
                children: [
                  SurveyCardLite(
                    surveyname: "Lok Sabha 2024",
                    location: "Anna Nagar",
                  ),
                  SurveyCardLite(
                    surveyname: "Health Survey - 1",
                    location: "Harbour",
                  ),
                  SurveyCardLite(
                    surveyname: "General-2",
                    location: "Kolathur",
                  ),
                  SurveyCardLite(
                    surveyname: "9 Years of Modi",
                    location: "Chepauk",
                  )
                ],
              )
            ]),
          ),
        )));
  }
}
