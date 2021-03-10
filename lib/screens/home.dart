import 'package:flutter/material.dart';
import 'package:flutter_accounting/screens/routes.dart';
import 'package:flutter_accounting/widgets/buttonsHomeWidgets.dart';



class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String currentProfilePic = 'images/home.jpg';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center ( child:Text('My Accounting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'JetBrains Mono',
            color: Colors.blueGrey[800],
          ),
        ),
        ),
        ),
        drawer:  Drawer(

          child:  ListView(
            children: <Widget>[

               UserAccountsDrawerHeader(

                accountName:
                    Text ('Silvia Roldan',style: TextStyle (fontSize: 20.0, color: Colors.lightGreen, fontWeight: FontWeight.bold),),
                // accountEmail:
                //     Text ('silviaroldan71@gmail.com',style: TextStyle (fontSize: 15.0, color: Colors.deepOrange, fontWeight: FontWeight.bold),),
                currentAccountPicture:
                    CircleAvatar (
                          backgroundColor: Colors.lightGreen,
                          child: Text (
                            'SR',
                            style: TextStyle (fontSize: 40.0, color: Colors.blueGrey[800],fontFamily:  'Montserrat',),
                          ),
                    ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                         image: AssetImage ('images/portada.png'),
                    )
                  )
                ),
             ListTile(
                  title:  Text("Home",  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: 'JetBrains Mono',
                    color: Colors.blueGrey[600],
                  ),),
                  leading:  Icon(Icons.roofing, color: Colors.lightGreen,),
                    onTap: () => Navigator.pushNamedAndRemoveUntil( context,
                        Routes.PATH_HOME, (route) => route.settings.name == '/'),
              ),
              ListTile(

                  title:  Text("Clients",  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: 'JetBrains Mono',
                    color: Colors.blueGrey[600],
                    ),
                  ),
                  leading:  Icon(Icons.emoji_people_rounded, color: Colors.lightGreen,),
                    onTap: () => Navigator.pushNamedAndRemoveUntil( context,
                        Routes.PATH_CLIENTS, (route) => route.settings.name == '/'),
              ),
              ListTile(
                  title:  Text("Suppliers",  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: 'JetBrains Mono',
                    color: Colors.blueGrey[600],
                  ),),
                  leading:  Icon(Icons.airport_shuttle_rounded,color: Colors.lightGreen,),
                    onTap: () => Navigator.pushNamedAndRemoveUntil( context,
                        Routes.PATH_SUPPLIERS, (route) => route.settings.name == '/'),

              ),
              ListTile(
                  title:  Text("Expensive",  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: 'JetBrains Mono',
                    color: Colors.blueGrey[600],
                  ),),
                  leading:  Icon(Icons.attach_file,color: Colors.lightGreen,),
                  onTap: () => Navigator.pushNamedAndRemoveUntil( context,
                    Routes.PATH_EXPENSIVE, (route) => route.settings.name == '/'),
              ),
              ListTile(
                  title:  Text("Invoices",  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: 'JetBrains Mono',
                    color: Colors.blueGrey[600],
                  ),),
                  leading:  Icon(Icons.euro,color: Colors.lightGreen,),
                  onTap: () => Navigator.pushNamedAndRemoveUntil( context,
                    Routes.PATH_INVOICES, (route) => route.settings.name == '/'),
              ),
              ListTile(
                title:  Text("Graphic ",  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: 'JetBrains Mono',
                  color: Colors.blueGrey[600],
                ),),
                leading:  Icon(Icons.donut_small ,color: Colors.lightGreen,),
                onTap: () => Navigator.pushNamedAndRemoveUntil( context,
                    Routes.PATH_INVOICES, (route) => route.settings.name == '/'),
              ),
               Divider(),
              ListTile(
                title:  Text("Cancel",  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: 'JetBrains Mono',
                  color: Colors.blueGrey[600],
                ),),
                leading:  Icon(Icons.cancel_presentation_rounded,color: Colors.lightGreen,),
                onTap: () => Navigator.pop(context),
              ),
            ],
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
