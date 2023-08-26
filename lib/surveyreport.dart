import 'package:flutter/material.dart';
import 'package:surveyhub/Components.dart';

class SurveyReportPage extends StatefulWidget {
  const SurveyReportPage({this.location, this.surveyname});
  final surveyname;
  final location;

  @override
  State<SurveyReportPage> createState() =>
      _SurveyReportPageState(location: location, surveyname: surveyname);
}

class _SurveyReportPageState extends State<SurveyReportPage> {
  _SurveyReportPageState({this.location, this.surveyname});
  final surveyname;
  final location;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person),
                    Column(
                      children: [Text("$surveyname Result"), Text("$location")],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Container(
                          width: 109,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color.fromRGBO(233, 97, 97, 0.1),
                          ),
                          child: Center(
                              child: Text(
                            "4/10 Questions",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(233, 97, 97, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          ))),
                    ),
                  ],
                ),
              ),
              ReportQuestionCard(),
              ReportQuestionCard(),
              ReportQuestionCard(),
              ReportQuestionCard(),
            ]),
          ),
        ),
      ),
    );
  }
}
