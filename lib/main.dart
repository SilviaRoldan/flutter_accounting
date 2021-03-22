import 'package:flutter/material.dart';
import 'package:flutter_accounting/screens/routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Accounting',
      theme: ThemeData(
        primaryIconTheme: IconThemeData (color:Colors.blueGrey[800],size: 100.0),
        brightness: Brightness.light,
        primaryColor: Colors.greenAccent[800],
        accentColor: Colors.lightGreen[600],
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
        // headline1: TextStyle(fontSize: 90.0, fontWeight: FontWeight.bold,color: Colors.black),
        // headline6: TextStyle(fontSize: 100.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, color: Colors.teal, fontFamily: 'Hind',fontWeight: FontWeight.bold),
        ),
      ),

      routes: Routes.routes,

    );
  }
}
