import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

    int _selectedIndex = 0;
    static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    static const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Business',
        style: optionStyle,
      ),
      Text(
        'Index 2: School',
        style: optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        backgroundColor: Colors.green[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text("Business")
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text("School")
            ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.local_hospital),
          //   title: Text("data")
          //   ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   title: Text("data")
          //   ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   title: Text("data")
          //   ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,

      ),
      
    );
  }
}














