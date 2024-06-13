import "package:flutter/material.dart";
import 'controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.blue,
      appBar: AppBar(
      title: Text('DRemind'),
      centerTitle: true,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,    
    ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Dreminder'), 
              accountEmail: Text('by Walmart'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              // arrowColor: Colors.blue,
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/'),
              title: Text('Home'),
              textColor: Colors.black,
              splashColor: Colors.blue,
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/notes'),
              title: Text('Notes'),
              textColor: Colors.black,
              splashColor: Colors.blue,
              leading: CircleAvatar(
                child: Icon(Icons.note),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/catatan todo'),
              title: Text('TO-DO'),
              textColor: Colors.black,
              splashColor: Colors.blue,
              leading: CircleAvatar(
                child: Icon(Icons.sticky_note_2),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/login'),
              title: Text('LOGIN'),
              textColor: Colors.black,
              splashColor: Colors.blue,
              leading: CircleAvatar(
                child: Icon(Icons.login),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
      
      ),
    );
   }
}