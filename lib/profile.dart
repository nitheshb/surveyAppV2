import 'package:flutter/material.dart';
import 'package:surveyhub/adduser.dart';

class People extends StatefulWidget {
  const People({super.key});

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  Widget People(name, sur, user) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0,),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(20),
              
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [  Text(
                        '$name',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),Text(user)],
                ),

                       Column(
                         children: [
                           Text(
                            "$sur Surveys",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(233, 97, 97, 1),
                              fontWeight: FontWeight.w500,
                            ),
                            
                      ), Text(
                        "Chennai",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(233, 97, 97, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                         ],
                       ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              
                        Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Surveyors",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "3 People",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    width: 112,
                    height: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromRGBO(233, 97, 97, 0.1),
                    ),
                    child: Center(
                        child: InkWell(
                           onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return AddSurveyorHome();
              },
            );
          },
                          child: Row(
                            children: [
                              SizedBox(width: 4),
                              Icon(Icons.add, color:Color.fromRGBO(233, 97, 97, 1)),
                              Text(
                                              "Add Surveyor",
                                              style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(233, 97, 97, 1),
                              fontWeight: FontWeight.w500,
                                              ),
                                            ),
                            ],
                          ),
                        )
                    )
                    ),
              ],
            ),
          
        
              People("Monesh D", 6, "Super User"),
              People("Nitesh", 10, "User"),
              People("Satyam", 6, "User")
            ]),
          ),
        ),
      ),
    );
  }
}
