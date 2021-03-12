import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_accounting/graph_widget.dart';


class GraphicInvoices extends StatelessWidget {

  Widget _bottonAction(IconData icon) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Icon(icon, color: Colors.lightGreen,),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(child: Text('GRAPHICS INVOICES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.blueGrey[800],
            ),
          ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 8.0,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _bottonAction(FontAwesomeIcons.chartLine,),
              _bottonAction(FontAwesomeIcons.chartPie),
              SizedBox(width: 48.0),
              _bottonAction(FontAwesomeIcons.wallet),
              _bottonAction(Icons.settings,),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {}
        ),
        body: _body()
    );
  }


  Widget _body() {
    return SafeArea(
        child: Column(
          children: <Widget>[
            _selector(),
            _expenses(),
            _graph(),
            _list(),
          ],
        )
    );
  }

  Widget _selector() => Container();

  Widget _expenses() {
    return Column(
      children: <Widget>[
        Text('\$2.365,50',
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
        child: GraphWidget(),
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
      trailing: Text('\$$value',
        style: TextStyle (
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Widget _list() {
    return Expanded(
        child: ListView (
          children: <Widget>[
            _item(FontAwesomeIcons.shoppingCart, 'Shopping', 14, 145.12),
          ],
        ),
    );
  }
}
