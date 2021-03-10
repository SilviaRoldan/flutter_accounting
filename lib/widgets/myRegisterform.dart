import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Define un widget de formulario
class MyRegisterForm extends StatefulWidget {
  @override
  MyRegisterFormState createState() {
    return MyRegisterFormState();
  }
}

class MyRegisterFormState extends State<MyRegisterForm> {

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
                leading: const Icon(Icons.emoji_people_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Full Name",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.edit_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Initials",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.alternate_email_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "email",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.lock_rounded),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Password",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.lock_rounded),
                title: new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Repeat Password",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen, width: 2.0),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}