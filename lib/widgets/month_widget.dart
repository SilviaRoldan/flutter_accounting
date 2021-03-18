import 'package:flutter/material.dart';
import 'package:flutter_accounting/graph_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class MonthWidget extends StatefulWidget {

  final List<DocumentSnapshot> documents;
  final double total;
  final List<double> perDay;
  final Map<String, double> categories;

  MonthWidget({Key key, this.documents}) :
        total = documents.map((doc) => doc['gross_eur']).fold(0.0, (a, b) => a+b),
        perDay = List.generate(30, (int index) {
          return documents.where((doc) => doc['day'] == (index + 1))
              .map((doc) => doc['gross_eur'])
              .fold(0.0, (a, b) => a + b);
        }),
        categories = documents.fold({}, (Map<String, double> map, document) {
          if (!map.containsKey(document['category'])) {
            map[document['category']] = 0.0;
          }

          map[document['category']] += document['gross_eur'];
          return map;
        }),
        super(key: key);

  @override
  _MonthWidgetState createState() => _MonthWidgetState();
}

class _MonthWidgetState extends State<MonthWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Column(
      children:<Widget> [
        _expenses(),
        _graph(),
        Container(
          color: Colors.lightGreen.withOpacity(0.15),
          height: 24.0,
        ),
        _list(),
      ],
    ),
    );
  }
  Widget _expenses() {
    return Column(
      children: <Widget>[
        Text('\$${widget.total.toStringAsFixed(2)}',
          style: TextStyle (
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.lightGreen
          ),
        ),
        Text('Total Expenses',
          style: TextStyle (
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.blueGrey,
          ),
        ),

      ],
    );
  }

  Widget _graph() {
    return Container(
      height: 250.0,
      child: GraphWidget(
        data: widget.perDay,
      ),
    );
  }

  Widget _item (IconData icon, String name, int percent, double value) {
    return ListTile (
      leading: Icon (icon, color: Colors.lightGreen,),
      title: Text(name,
        style: TextStyle (
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.blueGrey,
        ),
      ),
      subtitle: Text('$percent% of expenses',
        style: TextStyle (
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
      ),
      trailing: Container (
        decoration: BoxDecoration (
          color: Colors.lightGreen.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('\$$value',
            style: TextStyle (
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),

      ),
    );
  }

  Widget _list() {
    return Expanded(
      child: ListView (
        children: <Widget>[
          _item(FontAwesomeIcons.shoppingCart, 'Shopping', 14, 145.12),
          _item(FontAwesomeIcons.fish, 'Shopping', 5, 96.32),
          _item(FontAwesomeIcons.personBooth, 'Clothes', 2, 89.23),
          _item(FontAwesomeIcons.laptop, 'Computer', 15, 523.23),
          _item(FontAwesomeIcons.shuttleVan, 'Petrol', 3, 200.0),
          _item(FontAwesomeIcons.cocktail, 'Alcohol', 10, 254.12),
          _item(FontAwesomeIcons.fileAlt, 'Bills', 14, 145.12),

        ],
      ),
    );
  }
}
