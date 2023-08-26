import 'package:flutter/material.dart';

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
                  Icon(Icons.menu)
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
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Row(
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
                Icon(Icons.search),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
