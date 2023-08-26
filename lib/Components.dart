import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:surveyhub/surveyreport.dart';
import 'package:get/get.dart';
import 'package:surveyhub/login.dart';

class SurveyCard extends StatefulWidget {
  SurveyCard({this.surveyname, this.deadline, this.participant, this.location});
  final surveyname;
  final location;
  final deadline;
  final participant;
  @override
  State<SurveyCard> createState() => _SurveyCardState(
      surveyname: surveyname,
      deadline: deadline,
      location: location,
      participant: participant);
}

class _SurveyCardState extends State<SurveyCard> {
  _SurveyCardState(
      {this.surveyname, this.deadline, this.participant, this.location});
  final surveyname;
  final location;

  final deadline;
  final participant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        surveyname,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(location),
                    ],
                  ),
                  Icon(Icons.mode_edit_outline_outlined)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey[200],
                width: MediaQuery.of(context).size.width,
                height: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.date_range),
                      Text(deadline),
                    ],
                  ),
                  Container(
                      width: 109,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromRGBO(233, 97, 97, 0.1),
                      ),
                      child: Center(
                          child: Text(
                        "$participant Participants",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(233, 97, 97, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SurveyCardLite extends StatefulWidget {
  const SurveyCardLite({this.surveyname, this.location});
  final surveyname;
  final location;

  @override
  State<SurveyCardLite> createState() =>
      _SurveyCardLiteState(surveyname: surveyname, location: location);
}

class _SurveyCardLiteState extends State<SurveyCardLite> {
  _SurveyCardLiteState({this.surveyname, this.location});
  final surveyname;
  final location;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SurveyReportPage(
                        location: location,
                        surveyname: surveyname,
                      )));
        },
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        surveyname,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(location),
                    ],
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class ProfileBar extends StatefulWidget {
  const ProfileBar({this.name, this.usertype});
  final name;
  final usertype;

  @override
  State<ProfileBar> createState() => _ProfileBarState(
        usertype: usertype,
        name: name,
      );
}

class _ProfileBarState extends State<ProfileBar> {
  _ProfileBarState({this.name, this.usertype});
  final name;
  final usertype;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue[200]),
      child: Column(children: [
        SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(usertype),
                        Text(
                          name,
                          style: TextStyle(
                              color: Color(0xFF000B23),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.notifications),
                  InkWell(
                    onTap: () {
                      FirebaseAuth.instance
                          .signOut()
                          .then((value) => Get.offAll(() => LoginPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.power_settings_new),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class ReportQuestionCard extends StatefulWidget {
  const ReportQuestionCard({super.key});

  @override
  State<ReportQuestionCard> createState() => _ReportQuestionCardState();
}

class _ReportQuestionCardState extends State<ReportQuestionCard> {
  Widget Answerreport(option) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(option),
        ),
        Row(
          children: [
            Container(
                width: 51,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromRGBO(97, 233, 143, 0.1),
                ),
                child: Center(
                    child: Text(
                  "25%",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(97, 233, 143, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ))),
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
                    "30 of 300",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(233, 97, 97, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ))),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Do you think there is an need for change in government now?",
                style: TextStyle(
                    color: Color(0xFF000B23), fontWeight: FontWeight.w600),
              ),
            )),
            Answerreport("No"),
            Answerreport("Yes"),
            Answerreport("May be"),
            Answerreport("No Answer"),
          ]),
        ));
  }
}
