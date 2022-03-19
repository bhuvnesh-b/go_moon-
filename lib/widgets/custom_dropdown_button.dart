import 'package:flutter/material.dart';

class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownButtonClass({required this.values,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*.05),
      width: width,
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 45, 45, 54),
        borderRadius: BorderRadius.circular(10),
      ),

      child: DropdownButton(
      underline: Container(),
      value: values.first,
      onChanged: (_) {},
      
      items:values.map(
      (e)
      {
        return DropdownMenuItem(
          child:Text(e),
          value: e,
          );
        },
      ).toList(),
      dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
      style: const TextStyle(
        color: Colors.white,
      ),
      ),);
  }
  }