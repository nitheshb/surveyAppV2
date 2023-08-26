import 'package:flutter/material.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
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
    );
  }
}
