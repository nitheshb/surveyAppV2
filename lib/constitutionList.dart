// form with survey name , select const, add questions
//
import 'package:flutter/material.dart';
import 'package:surveyhub/Components.dart';
import 'package:surveyhub/addConstitution.dart';
import 'package:surveyhub/addsurvey.dart';
import 'package:surveyhub/constitutionCard.dart';

class ConstitutionList extends StatefulWidget {
  const ConstitutionList({super.key});

  @override
  State<ConstitutionList> createState() => _ConstitutionListState();
}

class _ConstitutionListState extends State<ConstitutionList> {
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
                                "All Constitutions",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text("3 Active Items")
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
                                    builder: (context) => AddConstitutionHome()));
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 4),
                              Icon(Icons.add, color:Color.fromRGBO(233, 97, 97, 1)),
                              Text(
                                              "Add Constitution",
                                              style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(233, 97, 97, 1),
                              fontWeight: FontWeight.w500,
                                              ),
                                            ),
                            ],
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
                    ConstitutionCard(
                      surveyname: "Nellore-Rural",
                      location: "Anna Nagar",
                      deadline: "30-12-2023",
                      participant: "100k",
                    ),
                    ConstitutionCard(
                      surveyname: "Nellore-Town",
                      deadline: "19-11-2023",
                      location: "Harbour",
                      participant: "50k",
                    ),
                    ConstitutionCard(
                      surveyname: "General-2",
                      deadline: "12-10-2023",
                      location: "Kolathur",
                      participant: "50k",
                    ),
                    ConstitutionCard(
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
