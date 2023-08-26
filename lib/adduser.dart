// form with survey name , select const, add questions
import 'package:flutter/material.dart';
import 'package:surveyhub/Components.dart';

class AddSurveyorHome extends StatefulWidget {
  const AddSurveyorHome({super.key});

  @override
  State<AddSurveyorHome> createState() => _AddSurveyorHomeState();
}

class _AddSurveyorHomeState extends State<AddSurveyorHome> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _surveyTitle = "";
  String _selectedPriority = "Anna Nagar";
    List<String> selectedOptions = [];
      String selectedOption = "";

  void toggleOption(String option) {

     setState(() {
      selectedOption = option;
    });
  }

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }
 
  @override
  Widget build(BuildContext context) {
    // TaskController controller = Get.put<TaskController>(TaskController());

    return Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
         floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: ElevatedButton(
            onPressed: _saveForm,
            child: Text("Save Surveyor"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                   const SizedBox(
                      height: 30),
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Register New Surveyor",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text("10 Surveyor")
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.menu),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                
                 Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
                   child: Padding(
                         padding: EdgeInsets.all(16.0),
                         child: Form(
                           key: _formKey,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               TextFormField(
                                 decoration: InputDecoration(labelText: "Name"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a surveyor Name.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 8.0),
                               TextFormField(
                                 decoration: InputDecoration(labelText: "S/O"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter father Name.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 8.0),
                               TextFormField(
                                 decoration: InputDecoration(labelText: "Phone No"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a phone no.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 8.0),
                               TextFormField(
                                 decoration: InputDecoration(labelText: "Email"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a email.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 8.0),
                               TextFormField(
                                 decoration: InputDecoration(labelText: "Address"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a address";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 20.0),
                               
                           
                             ],
                           ),
                         ),),
                 ),
                  const SizedBox(
                  height: 20,
                ),
   
              ],
            ),
          ),
          
    
        ));
  }
}

class OptionTile extends StatelessWidget {
  final String option;
  final bool isSelected;
  final Function(String) onTap;

  OptionTile({
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => onTap(option),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
              color: isSelected ? Colors.green : Colors.grey,
            ),
            SizedBox(width: 4),
            Text(option),
          ],
        ),
      ),
    );
  }
}