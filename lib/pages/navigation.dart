import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  
  @override

  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Navigation"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){

            },
          )
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.list),
              text: "All Items",
            ),
            Tab(
              icon: Icon(Icons.edit),
              text: "Edit",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Settings",
            ),
          ],
        ),
      ),
      drawer: Drawer(
        
        child: Container(
          color: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.tealAccent,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 70,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.person, size: 50),
                          SizedBox(width: 20,),
                          Text("Mia khalifa", style: TextStyle(fontSize: 30),)
                        ],
                      ),
                      SizedBox(height: 50,),
                  ],
                )
              ),
              SizedBox(height: 15),
              InkWell(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.exit_to_app),),
                  title: Text("Close Drawer"),
                  subtitle: Text("Completely hide drawer"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              InkWell(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.exit_to_app),),
                  title: Text("Exit Page"),
                  subtitle: Text("Completely exit from this page"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      body: TabBarView(
        children: <Widget>[
          Text("All Items"),
          Text("Edit Items"),
          Text("Settings"),
          
        ],
      ),

  
      
    ),

    );
  }
}