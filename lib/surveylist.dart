// form with survey name , select const, add questions
//
import 'package:flutter/material.dart';
import 'package:surveyhub/Components.dart';
import 'package:surveyhub/addsurvey.dart';

class SurveyList extends StatefulWidget {
  const SurveyList({super.key});

  @override
  State<SurveyList> createState() => _SurveyListState();
}

class _SurveyListState extends State<SurveyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                // ProfileBar(
                //   name: "Monesh D",
                //   usertype: "Super User",
                // ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "All Surveys",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text("3 Active Surveys")
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                    Row(
                      children: [
                        // Icon(Icons.menu),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddSurveyHome()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  // physics: const AlwaysScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  children: [
                    SurveyCard(
                      surveyname: "Lok Sabha 2024",
                      location: "Anna Nagar",
                      deadline: "30-12-2023",
                      participant: "100k",
                    ),
                    SurveyCard(
                      surveyname: "Health Survey - 1",
                      deadline: "19-11-2023",
                      location: "Harbour",
                      participant: "50k",
                    ),
                    SurveyCard(
                      surveyname: "General-2",
                      deadline: "12-10-2023",
                      location: "Kolathur",
                      participant: "50k",
                    ),
                    SurveyCard(
                      surveyname: "9 Years of Modi",
                      deadline: "08-10-2023",
                      location: "Chepauk",
                      participant: "10k",
                    )
                  ],
                ),
              ])),
        ));
  }
}
