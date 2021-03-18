
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_accounting/graph_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';





class GraphicInvoices extends StatefulWidget {

  @override
  _GraphicInvoicesState createState() => _GraphicInvoicesState();
}

class _GraphicInvoicesState extends State<GraphicInvoices> {
  PageController _controller;

  int currentPage = 8;

  @override


  void initState(){
      super.initState();


      FirebaseFirestore.instance
          .collection('expensives')
          .where('month_invoices', isEqualTo: currentPage + 1)
          .snapshots()
          .listen((data) =>
          data.docs.forEach((doc) => print(doc['category'])));



      _controller = PageController(
      initialPage: currentPage,
      viewportFraction: 0.4,
    );
  }

  Widget _bottomAction(IconData icon) {
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
          title: Center(child: Text('Graphics Expensives',
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
              _bottomAction(FontAwesomeIcons.chartLine,),
              _bottomAction(FontAwesomeIcons.chartPie),
              SizedBox(width: 48.0),
              _bottomAction(FontAwesomeIcons.wallet),
              _bottomAction(Icons.settings,),
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
            Container(
              color: Colors.lightGreen.withOpacity(0.15),
              height: 24.0,
            ),
            _list(),
          ],
        )
    );
  }

  Widget _pageItem (String name, int position){
    var _alignment;

    final selected = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey,
    );
    final unselected = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: Colors.blueGrey.withOpacity(0.4),
    );



    if ( position == currentPage){
      _alignment = Alignment.center;
    } else if (position > currentPage){
      _alignment = Alignment.centerRight;
    } else {
      _alignment = Alignment.centerLeft;
    }

    return Align(
        alignment: _alignment,
        child: Text(name,
           style: position == currentPage ? selected : unselected,),
    );
  }

  Widget _selector() {
    return SizedBox.fromSize(
      size: Size.fromHeight(70.0),
      child: PageView(
        onPageChanged: (newPage) {
          setState(() {
            currentPage = newPage;
          });
        },
        controller: _controller,
        children: <Widget>[
          _pageItem('January',0),
          _pageItem('February',1),
          _pageItem('March',2),
          _pageItem('April',3),
          _pageItem('MAy',4),
          _pageItem('June',5),
          _pageItem('July',6),
          _pageItem('August',7),
          _pageItem('September',8),
          _pageItem('October',9),
          _pageItem('November',10),
          _pageItem('December',11),
        ],
      ),

    );
  }

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
