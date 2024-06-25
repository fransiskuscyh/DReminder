import "package:flutter/material.dart";
import 'package:flutter_application_1/login/view.dart';
import 'package:flutter_application_1/menu-pages/catatan%20todo/view.dart';
import 'package:flutter_application_1/services/api.dart';
import 'controller.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
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
              title: Text('LogOut'),
              textColor: Colors.black,
              splashColor: Colors.blue,
              leading: CircleAvatar(
                child: Icon(Icons.logout),
              ),
            )
          ],
        ),
      ),
      
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // update `_focusedDay` here as well
              });
            },
            calendarStyle: CalendarStyle(
              todayTextStyle: TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: Center(
              child: Text(
                _selectedDay != null
                    ? 'Selected day: ${_selectedDay!.toLocal()}'
                    : 'No day selected',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}