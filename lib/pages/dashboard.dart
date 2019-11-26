import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:widgets/back/interface.dart';
import 'package:widgets/pages/dialogs.dart';
import 'package:widgets/pages/information.dart';
import 'package:widgets/pages/inputs.dart';
import 'package:widgets/pages/jsonSave.dart';
import 'package:widgets/pages/sliverAppBar.dart';
import 'navigation.dart';
import 'bottomNavigation.dart';
import 'buttons.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

    Material myItems(IconData icon, String heading, int color){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(heading,
                    style: TextStyle(
                      color: new Color(color),
                      fontSize: 17.5,
                    ),),
                  ),
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(20.0),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Icon(
                        icon, color: Colors.white,
                        size: 25,
                      ),
                    ),

                  )
                ],
              )
            ],
          ),
        ),),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      
      appBar: AppBar(
        title: Text("All Widgets", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        children: <Widget>[
          InkWell(
            child:  myItems(Icons.input, "Inputs", 0xffff1111),
            onTap: () {
              print("Inputs pressesd");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Inputs()));
            },
          ),
          InkWell(
            child:  myItems(Icons.navigation, "Navigation", 0xffff3266),
            onTap: () {
              print("Appbar part pressed");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Navigation()));
            },
          ),
          InkWell(
            child:  myItems(Icons.border_bottom, "BottomNav", 0xff622F74),
            onTap: () {
              print("Bottom Nav part pressed");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BottomNav()));
            },
          ),
          InkWell(
            child:  myItems(Icons.list, "Dialogs", 0xffed622b),
            onTap: () {
              // print("Inputs pressed");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Dialogs()));
            },
          ),
          InkWell(
            child:  myItems(Icons.border_top, "Sliver AppBar", 0xff26cb3c),
            onTap: () {
              // print("Buttons pressed");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SliverappBar()));
            },
          ),
          
          InkWell(
            child:  myItems(Icons.info, "Information D..", 0xff3399fe),
            onTap: () {
              print("Information Display pressed");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Information()));
            },
          ),
          InkWell(
            child:  myItems(Icons.radio_button_checked, "Buttons", 0xfff4c83f),
            onTap: () {
              print("Buttons pressed");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Buttons("Buttons tab")));
            },
          ),
          InkWell(
            child:  myItems(Icons.group_work, "Group work", 0xff622F74),
            onTap: () {
              print("Group pressed");
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Interface() ));
            },
          ),
          InkWell(
            child:  myItems(Icons.line_weight, "Internal Json", 0xffad61f1),
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => JsonSave()));
              print("Internal json");
            },
          ),
          InkWell(
            child:  myItems(Icons.message, "Messages", 0xff7297ff),
            onTap: () {
              print("Messages pressed");
            },
          ),
          
          
          

        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 110.0),
          StaggeredTile.extent(1, 240.0),
          StaggeredTile.extent(1, 120.0),
          StaggeredTile.extent(2, 100.0),
          StaggeredTile.extent(1, 115.0),
          StaggeredTile.extent(1, 115.0),
          StaggeredTile.extent(1, 120.0),
          StaggeredTile.extent(1, 120.0),
          StaggeredTile.extent(1, 120.0),
          StaggeredTile.extent(1, 120.0),
        ],
      ),
    );
  }
}