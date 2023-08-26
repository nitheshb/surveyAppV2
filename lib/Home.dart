import 'package:flutter/material.dart';
import 'package:surveyhub/Components.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget Conbox(Surveynumber, priority, Constitution, Participants) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromRGBO(142, 97, 233, 0.1),
                    ),
                    child: Center(
                        child: Text(
                      "$Surveynumber Surveys",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF8E61E9),
                        fontWeight: FontWeight.w500,
                      ),
                    ))),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromRGBO(233, 97, 97, 0.1),
                    ),
                    child: Center(
                        child: Text(
                      priority,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(233, 97, 97, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ))),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              Constitution,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
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
                  "$Participants Participants",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(233, 97, 97, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ))),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
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
                                  Text("Super User"),
                                  Text(
                                    "Monesh D",
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Constitutions",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text("10 Chepauk")
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.menu),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // decoration: BoxDecoration(color: Colors.white),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Conbox("3", "High", "Anna Nagar", "70k"),
                        Conbox("3", "High", "Anna Nagar", "70k"),
                        Conbox("3", "High", "Anna Nagar", "70k")
                      ])),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today’s Active Survery’s",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "3 Tasks Pending",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  // physics: const AlwaysScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  children: [
                    SurveyCard(),
                    SurveyCard(),
                    SurveyCard(),
                    SurveyCard()
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
