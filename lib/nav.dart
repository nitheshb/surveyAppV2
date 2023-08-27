import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:surveyhub/Home.dart';
import 'package:surveyhub/constitutionList.dart';
import 'package:surveyhub/profile.dart';
import 'package:surveyhub/reports.dart';
import 'package:surveyhub/surveylist.dart';

class ButtomNavigationBar extends StatefulWidget {
  @override
  State<ButtomNavigationBar> createState() => _ButtomNavigationBarState();
}

class _ButtomNavigationBarState extends State<ButtomNavigationBar> {
  var _currentIndex = 0;

  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
          child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: <Widget>[Home(), ConstitutionList(), SurveyList(), Reports(), People()],
      )),
      bottomNavigationBar: SafeArea(
        child: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home_filled),
                title: Text('Home'),
                activeColor: Color(0xFF59D7B5),
                inactiveColor: Colors.black45),
        
            BottomNavyBarItem(
                icon: Icon(Icons.local_activity_outlined),
                title: Text('Constitution'),
                activeColor: Color.fromRGBO(186, 175, 254, 100),
                // Color(0xFF41ccc7),
                inactiveColor: Colors.black45),
                    BottomNavyBarItem(
                icon: Icon(Icons.task),
                title: Text('Survey'),
                activeColor: Color.fromRGBO(186, 175, 254, 100),
                // Color(0xFF41ccc7),
                inactiveColor: Colors.black45),
            BottomNavyBarItem(
                icon: Icon(Icons.auto_graph_outlined),
                title: Text('Reports'),
                activeColor: Color.fromRGBO(186, 175, 254, 100),
                // Color(0xFF41ccc7),
                inactiveColor: Colors.black45),
            BottomNavyBarItem(
                icon: Icon(
                  Icons.people_sharp,
                ),
                title: Text('Members'),
                activeColor: Color(0xFF41ccc7),
                inactiveColor: Colors.black45),
          ],
        ),
      ),
    );
  }
}
