import 'package:flutter/material.dart';

import '../widgets/text-form-field.dart';

class AddFoodForm extends StatefulWidget{
  const AddFoodForm({super.key});

  @override
  AddFormState createState() {
    return AddFormState();
  }}

class AddFormState extends State<AddFoodForm>{
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const CustomTextField(
              hintText: 'Enter the name of the food.',
              labelText: 'Name',
          ),
          const CustomTextField(
              hintText: 'Enter the calorie amount of food',
              labelText: 'Calorie',
            ),
          const CustomTextField(
              hintText: 'Description',
              labelText: 'Description',
          ),
          Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  minimumSize: const Size.fromHeight(60),
                  backgroundColor: Colors.blue,
                ),
                onPressed: (){
                      print("form submitted");
                      },
                child: const Text(
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                'Submit'
                ),
              )),
        ],
      ),
    );
  }}