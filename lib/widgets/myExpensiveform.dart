import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_accounting/accounting_icons.dart';

// Define un widget de formulario
class MyExpensiveForm extends StatefulWidget {
  @override
  MyExpensiveFormState createState() {
    return MyExpensiveFormState();
  }
}

class MyExpensiveFormState extends State<MyExpensiveForm> {

  final _formKey = GlobalKey<FormState>();

  bool _paid = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.roofing_rounded),
                title:DropdownButton<String>(
                  hint: Text ('Company'),
                  icon: Icon(Icons.arrow_drop_down, color: Colors.lightGreen, ),
                  iconSize: 36,
                  isExpanded: true,
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              ListTile(
                leading: const Icon(Icons.calendar_today_rounded),
                title:  TextField(
                  decoration:  InputDecoration(
                    hintText: "Date Invoices",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.format_list_numbered_rounded),
                title:  TextField(
                  decoration:  InputDecoration(
                    hintText: "Number Invoices",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.edit_rounded),
                title:  TextFormField(
                  decoration:  InputDecoration(
                    hintText: "Short Description",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.confirmation_num_rounded),
                title:  TextFormField(
                  decoration:  InputDecoration(
                    hintText: "VAT %",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.euro_rounded),
                title:  TextFormField(
                  decoration:  InputDecoration(
                    hintText: "Net EUR",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(AccountingIcons.percent),
                title:  TextFormField(
                  decoration:  InputDecoration(
                    hintText: "VAT EUR",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.point_of_sale_rounded),
                title:  TextFormField(
                  decoration:  InputDecoration(
                    hintText: "Gross EUR",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              CheckboxListTile(
                title: const Text('Paid'),
                value: _paid,
                onChanged: (bool newValue) {
                  setState(() {
                    _paid = newValue;
                  });
                },
                secondary: const Icon(Icons.touch_app_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.perm_contact_calendar_rounded),
                title:  TextFormField(
                  decoration:  InputDecoration(
                    hintText: "Date Paid",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}