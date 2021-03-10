import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Define un widget de formulario
class MyInvoicesForm extends StatefulWidget {
  @override
  MyInvoicesFormState createState() {
    return MyInvoicesFormState();
  }
}

class MyInvoicesFormState extends State<MyInvoicesForm> {

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
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Company",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
               ListTile(
                leading: const Icon(Icons.calendar_today_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
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
                title: new TextField(
                  decoration: new InputDecoration(
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
                title: new TextFormField(
                  decoration: new InputDecoration(
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
                title: new TextFormField(
                  decoration: new InputDecoration(
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
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Net EUR",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
               ListTile(
                leading: const Icon(Icons.euro_rounded),
                title: new TextFormField(
                  decoration: new InputDecoration(
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
                title: new TextFormField(
                  decoration: new InputDecoration(
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
                title: new TextFormField(
                  decoration: new InputDecoration(
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