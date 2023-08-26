import 'package:flutter/material.dart';

class People extends StatefulWidget {
  const People({super.key});

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  Widget People(name, sur, user) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Material(
        elevation: 15,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Text(name), Text(user)],
                ),
                Text('$sur Surveys'),
                Text("Chennai")
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
              Text("Users"),
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
