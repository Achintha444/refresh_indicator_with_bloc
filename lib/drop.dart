import 'package:flutter/material.dart';



class Drop extends StatefulWidget {
  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {

  final _currencies = [
  "Food",
  "Transport",
  "Personal",
  "Shopping",
  "Medical",
  "Rent",
  "Movie",
  "Salary",
  "Salary1"
];

  String _currentSelectedValue;

  @override
  void initState() {
    _currentSelectedValue = _currencies[0];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    var _list = _currencies.map((value) {
                print(value==null);
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList();


    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
              hintText: 'Please select expense',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
          isEmpty: _currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _currentSelectedValue,
              isDense: true,
              onChanged: (String newValue) {
                setState(() {
                  _currentSelectedValue = newValue;
                 // state.didChange(newValue);
                });
              },
              items: _list
            ),
          ),
        );
      },
    );
  }
}
