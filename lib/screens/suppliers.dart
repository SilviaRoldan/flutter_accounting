import 'package:flutter/material.dart';
import 'package:flutter_accounting/screens/routes.dart';


class Suppliers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center ( child:Text('My Suppliers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.blueGrey[800],
          ),
        ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Image.asset('images/client.png', width: 400, height: 600, fit: BoxFit.cover,),

          ],
        ),
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: '1',
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.PATH_FORM_SUPPLIERS, (route) => route.settings.name == '/'),
              child: Icon(Icons.add, color:Colors.blueGrey[800],size: 38.0),
            ),
            FloatingActionButton(
              heroTag: '2',
              onPressed: () {},
              child: Icon(Icons.library_books_outlined, color:Colors.blueGrey[800],size: 38.0 ),
            ),
            FloatingActionButton(
              heroTag: '3',
              onPressed: () {},
              child: Icon(Icons.search, color:Colors.blueGrey[800],size: 38.0 ),
            )
          ],
        ),
      ),
    );
  }
}


