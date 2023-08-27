// form with survey name , select const, add questions
import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
import 'package:surveyhub/Components.dart';
import 'package:surveyhub/multiSelectSurveyors.dart';

class AddSurveyHome extends StatefulWidget {
  const AddSurveyHome({super.key});

  @override
  State<AddSurveyHome> createState() => _AddSurveyHomeState();
}

class _AddSurveyHomeState extends State<AddSurveyHome> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _surveyTitle = "";
  String _selectedPriority = "Anna Nagar";
    List<String> selectedOptions = [];
      String selectedOption = "";
       int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> selected = [];

  void toggleOption(String option) {
    // setState(() {
    //   if (selectedOptions.contains(option)) {
    //     selectedOptions.remove(option);
    //   } else {
    //     selectedOptions.add(option);
    //   }
    // });
     setState(() {
      selectedOption = option;
    });
  }

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Process or save the data as needed
      print("Survey Title: $_surveyTitle");
      print("Selected Priority: $_selectedPriority");
    }
  }
   Widget QuestionWidget() {
return   Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(
                  "1) How is the new health scheme?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
           
                OptionTile(
                  option: "good",
                  isSelected: selectedOption == "good",
                  onTap: toggleOption,
                ),
                OptionTile(
                  option: "bad",
                 isSelected: selectedOption == "bad",
                  onTap: toggleOption,
                ),
                OptionTile(
                  option: "ugly",
                   isSelected: selectedOption == "ugly",
                  onTap: toggleOption,
                ),
                OptionTile(
                  option: "not sure",
                   isSelected: selectedOption == "not sure",
                  onTap: toggleOption,
                ),
              ],
            ),
         ),
       );
    
               
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
            child: Text("Save Survey"),
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
                            Text(
                              "Create New Survey",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text("10 Chepauk")
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                     
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
                                 decoration: InputDecoration(labelText: "Survey Title"),
                                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a survey title.";
                    }
                    return null;
                                 },
                                 onSaved: (value) {
                    _surveyTitle = value!;
                                 },
                               ),
                               SizedBox(height: 16.0),
                               DropdownButtonFormField<String>(
                                 value: _selectedPriority,
                                 decoration: InputDecoration(labelText: "Constitution"),
                                 items: ["Anna Nagar", "Nugambakamd", "Central"]
                      .map((String priority) {
                    return DropdownMenuItem<String>(
                      value: priority,
                      child: Text(priority),
                    );
                                 }).toList(),
                                 onChanged: (value) {
                    setState(() {
                      _selectedPriority = value!;
                    });
                                 },
                               ),
                                SizedBox(height: 16.0),
            //                      DropDownMultiSelect(
            //   selected_values_style: TextStyle(color: Colors.white),
            //   onChanged: (List<String> x) {
            //     setState(() {
            //       selected =x;
            //     });
            //   },
            //   options: ['a' , 'b' , 'c' , 'd'],
            //   selectedValues: selected,
            //   whenEmpty: 'Select Something',
            // ),
                        
                             SizedBox(height: 20.0),
                             ],
                           ),
                         ),),
                 ),
                  const SizedBox(
                  height: 10,
                ),
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              
                        Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Survey Questions",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "3 Questions added",
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
                return BottomSliderForm();
              },
            );
          },
                          child: Row(
                            children: [
                              SizedBox(width: 4),
                              Icon(Icons.add, color:Color.fromRGBO(233, 97, 97, 1)),
                              Text(
                                              "Add Question",
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
          
            Column(
                  // physics: const AlwaysScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  children: [
                    SizedBox(height: 10),
                    QuestionWidget(),
                    SizedBox(height: 2,),
                    QuestionWidget(),
                  ],
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

class BottomSliderForm extends StatelessWidget {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String _surveyTitle = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
      // Wrap the form content in a SingleChildScrollView
      child: Form(
              // key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Add New Question",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                    decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white),
                child:  Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   TextFormField(
                                     decoration: InputDecoration(labelText: "Question"),
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
                                     decoration: InputDecoration(labelText: "Option-1"),
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
                                     decoration: InputDecoration(labelText: "Option-2"),
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
                                     decoration: InputDecoration(labelText: "Option-3"),
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
                                     decoration: InputDecoration(labelText: "Option-4"),
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
                ),
              
                
              ),
            ),
                     
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
