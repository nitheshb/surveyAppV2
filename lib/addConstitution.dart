// form with survey name , select const, add questions
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:surveyhub/Components.dart';

class AddConstitutionHome extends StatefulWidget {
  const AddConstitutionHome({super.key});

  @override
  State<AddConstitutionHome> createState() => _AddConstitutionHomeState();
}

class _AddConstitutionHomeState extends State<AddConstitutionHome> {
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
            child: Text("Add Constitution"),
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
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add New Constitution",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 4,),
                            Text("3 Fields")
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                       onTap: () {
        Navigator.pop(context);
          },
                        child: Row(
                          children: [
                                           
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
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
                                 decoration: InputDecoration(labelText: "Constitution Name"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a Constitution Name.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 8.0),
                               TextFormField(
                                 decoration: InputDecoration(labelText: "District"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter District.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 8.0),
                               TextFormField(
                                 decoration: InputDecoration(labelText: "State"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a state.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 8.0),
                               TextFormField(
                                 decoration: InputDecoration(labelText: "Incharge Name"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a Incharge Name.";
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