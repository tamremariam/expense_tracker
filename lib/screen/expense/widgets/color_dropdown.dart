import 'package:flutter/material.dart';

// class ColorDropDownMenu extends StatefulWidget {
//   const ColorDropDownMenu({super.key});

//   @override
//   State<ColorDropDownMenu> createState() => _ColorDropDownMenuState();
// }

// const List<String> _list = <String>[
//   'Red',
//   'Green',
//   'Blue',
//   'Yellow',
//   'Orange',
//   'Purple',
//   'Pink',
//   'Black',
//   'White',
// ];

// class _ColorDropDownMenuState extends State<ColorDropDownMenu> {
//   String dropdownValue = _list.first;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownMenu<String>(
//       initialSelection: _list.first,
//       onSelected: (String? value) {
//         // This is called when the user selects an item.
//         setState(() {
//           dropdownValue = value!;
//         });
//       },

//       dropdownMenuEntries: _list.map<DropdownMenuEntry<String>>((String value) {
//         return DropdownMenuEntry<String>(value: value, label: value);
//       }).toList(),
//     );
//   }
// }

class CustomDropdownFormField extends StatefulWidget {
  @override
  _CustomDropdownFormFieldState createState() =>
      _CustomDropdownFormFieldState();
}

class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
  String? _selectedValue;
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButtonFormField<String>(
        value: _selectedValue,
        hint: Text('Select an option'),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        decoration: InputDecoration(
          labelText: 'Options',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onChanged: (String? newValue) {
          setState(() {
            _selectedValue = newValue;
          });
        },
        items: _options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
