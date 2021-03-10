import 'package:flutter/material.dart';
import 'package:flutter_accounting/widgets/buttonsHomeWidgets.dart';



class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center ( child:Text('My Accounting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'JetBrains Mono',
            color: Colors.deepOrange,
          ),
        ),
        ),

      ),
      body: Column(
        children: [
          Image.asset('images/home.jpg', width:500, height: 550, fit: BoxFit.cover,),
          ButtonHomeWidget(),
        ],
      ),
    );
  }
}