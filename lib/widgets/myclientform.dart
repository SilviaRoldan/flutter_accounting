import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_accounting/accounting_icons.dart';

// Define un widget de formulario
class MyClientForm extends StatefulWidget {
  @override
  MyClientFormState createState() {
    return MyClientFormState();
  }
}

class MyClientFormState extends State<MyClientForm> {

  final _formKey = GlobalKey<FormState>();

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
              new ListTile(
                leading: const Icon(Icons.roofing_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Company Name",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.person),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Full Name",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.directions),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Direction",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.home_work_rounded),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Town / City",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.markunread_mailbox_rounded),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "ZIP",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                      ),
                    ),
                  ),
                ),

              new ListTile(
                leading: const Icon(Icons.phone_in_talk),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Telephone",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(AccountingIcons.percent),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "VAT",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.alternate_email_rounded),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Mail",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
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