import 'package:flutter/material.dart';

class SliverappBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 233,
            // title: Text("Sliver Appbar", style: TextStyle(color: Colors.pinkAccent),),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://secure-akns.subaru.com/content/media/mp_fullscreen_1920/20_WRX_photos_ext_01.jpg"),
              title: Text("All about Subaru"),
              
            ),
          ),



          SliverFillRemaining(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(),
                  title: Text("Title"),
                  subtitle: Text("This is amaizing information"),
                  trailing: Icon(Icons.account_circle),
                ),
                ListTile(
                  leading: CircleAvatar(),
                  title: Text("Title"),
                  subtitle: Text("This is amaizing information"),
                  trailing: Icon(Icons.account_circle),
                ),
                ListTile(
                  leading: CircleAvatar(),
                  title: Text("Title"),
                  subtitle: Text("This is amaizing information"),
                  trailing: Icon(Icons.account_circle),
                ),
                ListTile(
                  leading: CircleAvatar(),
                  title: Text("Title"),
                  subtitle: Text("This is amaizing information"),
                  trailing: Icon(Icons.account_circle),
                ),
                ListTile(
                  leading: CircleAvatar(),
                  title: Text("Title"),
                  subtitle: Text("This is amaizing information"),
                  trailing: Icon(Icons.account_circle),
                ),
              ],
            ),
          )

        ],
      ),

    );
  }
}