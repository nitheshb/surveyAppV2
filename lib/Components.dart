import 'package:flutter/material.dart';

class SurveyCard extends StatefulWidget {
  const SurveyCard({super.key});

  @override
  State<SurveyCard> createState() => _SurveyCardState();
}

class _SurveyCardState extends State<SurveyCard> {
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
                        "Health Survey - 1",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text("Anna Nagar, Chennai"),
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
                      Text("10 july 2022"),
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
                        "70 Participants",
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
