import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Define un widget de formulario
class MyLoginForm extends StatefulWidget {
  @override
  MyLoginFormState createState() {
    return MyLoginFormState();
  }
}

class MyLoginFormState extends State<MyLoginForm> {

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
              SizedBox(height:  5.0,),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.only(top: 15.0, left: 20.0),
                child: InkWell (
                  child: Text('Forgot Password',
                  style: TextStyle (
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                    fontFamily:  'Montserrat',
                    decoration: TextDecoration.underline
                  ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}