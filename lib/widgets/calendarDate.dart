import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CalendarDate extends StatefulWidget {
  @override
  CalendarDateState createState() {
    return CalendarDateState();
  }
}

class CalendarDateState extends State<CalendarDate> {

  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_dateTime == null ? 'Nothing has been picked yet' : _dateTime
                .toString()),
            RaisedButton(
              child: Text('Pick a date'),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                    firstDate: DateTime(2019),
                    lastDate: DateTime(2022)
                ).then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }
}