import 'package:flutter/material.dart';
import 'package:flutter_accounting/widgets/myLoginform.dart';
import 'package:flutter_accounting/screens/routes.dart';




class FormLogin extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center ( child:Text('LOGIN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.blueGrey[800],
          ),
        ),
        ),

      ),
      body: MyLoginForm(),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: '1',
              onPressed: () {},
              child: Icon(Icons.login_rounded, color:Colors.blueGrey[800],size: 38.0),
            ),
            FloatingActionButton(
              heroTag: '2',
              onPressed: () => Navigator.pushNamedAndRemoveUntil( context,
                  Routes.PATH_HOME, (route) => route.settings.name == '/'),
              child: Icon(Icons.logout, color:Colors.blueGrey[800],size: 38.0 ),
            ),
          ],
        ),
      ),
    );
  }
}