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
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: const ElevatedButton(
                onPressed: null,
                child: Text('Submit'),
              )),
        ],
      ),
    );
  }}