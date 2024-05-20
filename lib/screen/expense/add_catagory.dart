import 'dart:math';

import 'package:expense_tracker/screen/expense/widgets/color_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCatagoryFragment extends StatefulWidget {
  const AddCatagoryFragment({
    super.key,
  });

  @override
  State<AddCatagoryFragment> createState() => _AddCatagoryFragmentState();
}

class _AddCatagoryFragmentState extends State<AddCatagoryFragment> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    final List<String> options = [
      'Red',
      'Green',
      'Blue',
      'Yellow',
      'Orange',
      'Purple',
      'Pink',
      'Black',
      'White',
    ];
    final List<Icon> SelectIcon = [
      Icon(
        FontAwesomeIcons.icons,
        color: Theme.of(context).colorScheme.outline,
      ),
      Icon(
        FontAwesomeIcons.icons,
        color: Theme.of(context).colorScheme.outline,
      ),
      Icon(
        FontAwesomeIcons.icons,
        color: Theme.of(context).colorScheme.outline,
      ),
      Icon(
        FontAwesomeIcons.icons,
        color: Theme.of(context).colorScheme.outline,
      ),
      Icon(
        FontAwesomeIcons.icons,
        color: Theme.of(context).colorScheme.outline,
      ),
    ];
    return Dialog(
      // backgroundColor: Colors.white,
      // backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // backgroundColor: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.background),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Add Catagory",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueGrey),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ],
            ),
            Column(
              children: [
                TextFormField(
                  onTap: () {
                    // MyFragment();
                  },
                  decoration: InputDecoration(
                    hintText: "Catagory Name",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      FontAwesomeIcons.pen,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                      borderSide:
                          BorderSide.none, // Set borderSide to none here
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField<String>(
                  value: selectedValue,
                  hint: const Text('Select an option'),
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.paintRoller,
                      color: Theme.of(context).colorScheme.outline,
                    ),

                    filled: true,
                    // fillColor: Colors.grey[200],
                    // labelText: 'Options',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  items: options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                // --------------------------------------------------------

// DropdownButtonFormField<Icon>(
//                   // value: selectedValue,
//                   hint: const Text('Select an option'),
//                   icon: const Icon(Icons.arrow_drop_down),
//                   iconSize: 24,
//                   elevation: 16,
//                   style: const TextStyle(color: Colors.black),
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       FontAwesomeIcons.paintRoller,
//                       color: Theme.of(context).colorScheme.outline,
//                     ),

//                     filled: true,
//                     // fillColor: Colors.grey[200],
//                     // labelText: 'Options',
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                   ),
//                   onChanged: (Icon? newValue) {
//                     setState(() {
//                       // selectedValue = newValue;
//                     });
//                   },
//                   items: [SelectIcon],
//                   // items: options.map<DropdownMenuItem<String>>((String value) {
//                   //   return DropdownMenuItem<String>(
//                   //     value: value,
//                   //     child: Text(value),
//                   //   );
//                   // }).toList(),
//                 ),
                //----------------------------------------------------------------
                TextFormField(
                  onTap: () {},
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "Select Icon",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      FontAwesomeIcons.icons,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide.none, // Set borderSide to none here
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: kToolbarHeight,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadiusDirectional.circular(15),
                      gradient: LinearGradient(colors: [
                        Theme.of(context).colorScheme.primary,
                        Theme.of(context).colorScheme.secondary,
                        Theme.of(context).colorScheme.tertiary,
                      ], transform: const GradientRotation(pi / 4))),
                  child: SizedBox(
                    width: double.infinity,
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent),
                        child: const Text("Save",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white))),
                  ),
                ),
              ],
            )
            // ),
          ],
        ),
      ),
    );
  }
}
