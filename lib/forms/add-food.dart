import 'package:flutter/material.dart';

import '../widgets/custom-button.dart';
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
        children: const <Widget>[
          CustomTextField(
              hintText: 'Enter the name of the food.',
              labelText: 'Name',
          ),
          CustomTextField(
              hintText: 'Enter the calorie amount of food',
              labelText: 'Calorie',
            ),
          CustomTextField(
              hintText: 'Description',
              labelText: 'Description',
          ),
          CustomButton(label: 'Submit'),
        ],
      ),
    );
  }}