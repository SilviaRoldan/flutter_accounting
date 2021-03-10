import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Define un widget de formulario
class MySuppliersForm extends StatefulWidget {
  @override
  MySuppliersFormState createState() {
    return MySuppliersFormState();
  }
}

class MySuppliersFormState extends State<MySuppliersForm> {

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
                leading: const Icon(Icons.business_center_outlined),
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
                    hintText: "Name",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
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
                    enabledBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.local_post_office),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "ZIP",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
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
                    enabledBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.assignment_outlined),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "VAT",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
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
                    enabledBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
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