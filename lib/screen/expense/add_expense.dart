import 'package:flutter/cupertino.dart';

import '../../core/utility/app_export.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10, 15, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Add Expense",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(
                          FontAwesomeIcons.dollarSign,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide.none, // Set borderSide to none here
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {
                      MyFragment();
                    },
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Catagory",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        FontAwesomeIcons.list,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return const AddCatagoryFragment();
                              },
                            );
                          },
                          icon: const Icon(CupertinoIcons.add)),
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
                  TextFormField(
                    onTap: () {},
                    decoration: InputDecoration(
                      hintText: "Note",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        FontAwesomeIcons.noteSticky,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide.none, // Set borderSide to none here
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () async {
                      var timeresult = showDatePicker(
                        context: context,
                        // initialDate: selectedDate,
                        initialDatePickerMode: DatePickerMode.day,
                        // initialEntryMode = DatePickerEnt
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2025),
                      );

                      // var datePicked = await

                      final snackBar =
                          SnackBar(content: Text("Date Picked $timeresult"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "today",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        FontAwesomeIcons.clock,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide.none, // Set borderSide to none here
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              onPressed: () {},
              title: 'Save',
            )
            // Container(
            //   width: double.infinity,
            //   height: kToolbarHeight,
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //       // shape: BoxShape.circle,
            //       borderRadius: BorderRadiusDirectional.circular(15),
            //       gradient: LinearGradient(colors: [
            //         Theme.of(context).colorScheme.primary,
            //         Theme.of(context).colorScheme.secondary,
            //         Theme.of(context).colorScheme.tertiary,
            //       ], transform: const GradientRotation(pi / 4))),
            //   child: SizedBox(
            //     width: double.infinity,
            //     height: kToolbarHeight,
            //     child: TextButton(
            //         onPressed: () {
            //           Navigator.pop(context);
            //         },
            //         style: TextButton.styleFrom(
            //             backgroundColor: Colors.transparent),
            //         child: const Text("Save",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w700,
            //                 color: Colors.white))),
            //   ),
            // ),
          ],
        ),
      ),
    ));
  }
}
