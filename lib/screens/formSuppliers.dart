import 'package:flutter/material.dart';
import 'package:flutter_accounting/widgets/mysuppliersform.dart';




class FormSuppliers extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center ( child:Text('New Suppliers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.blueGrey[800],
          ),
        ),
        ),

      ),
      body: MySuppliersForm(),
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
              child: Icon(Icons.check, color:Colors.blueGrey[800],size: 38.0),
            ),
            FloatingActionButton(
              heroTag: '2',
              onPressed: () {},
              child: Icon(Icons.delete_forever, color:Colors.blueGrey[800],size: 38.0 ),
            ),
          ],
        ),
      ),
    );
  }
}
