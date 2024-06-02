import "package:flutter/material.dart";
import './controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
      title: Text('DRemind'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Dreminder'), 
              accountEmail: Text('by Walmart'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/'),
              title: Text('Home'),
              leading: CircleAvatar(
                child: Icon(Icons.apps),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/catatan'),
              title: Text('Notes'),
              leading: CircleAvatar(
                child: Icon(Icons.note),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/kategori'),
              title: Text('Categories'),
              leading: CircleAvatar(
                child: Icon(Icons.note),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/register'),
              title: Text('Register'),
              leading: CircleAvatar(
                child: Icon(Icons.verified_user),
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