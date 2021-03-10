import 'package:flutter/material.dart';
import 'package:flutter_accounting/screens/routes.dart';


class ButtonHomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.lightGreen)),
            onPressed: () => Navigator.pushNamedAndRemoveUntil( context,
                Routes.PATH_FORM_REGISTER, (route) => route.settings.name == '/'),
            color: Colors.lightGreen,
            textColor: Colors.blueGrey[800],
            child: Text("REGISTER".toUpperCase(),
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10.0),

          SizedBox(width: 70.0),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.lightGreen)),
            onPressed: () => Navigator.pushNamedAndRemoveUntil( context,
                Routes.PATH_FORM_LOGIN, (route) => route.settings.name == '/'),
            color: Colors.lightGreen,
            textColor: Colors.blueGrey[800],
            child: Text("LOGIN".toUpperCase(),
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
          ),
          ),
        ],
      ),

    );
  }
}
