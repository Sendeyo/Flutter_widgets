import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final title;
  Buttons(this.title);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String dropdownValue = "face";

  String buttonPressed = "None pressed";

  bool isSwitched = false;
  bool isChecked =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("First"),
                  
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Second"),
                ),
                
              ],
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            color: Colors.pinkAccent,
            height: 50,
            child: Center(
              child: Text(buttonPressed, style: TextStyle(
                fontSize: 20
              ),),
            ),
          ),
          ButtonBar(
            children: <Widget>[
              RaisedButton(
                child: Text("Raised Button"),
                color: Colors.cyan,
                elevation: 5.0,
                onPressed: (){
                  setState(() {
                    buttonPressed = "Raised Button presssed";
                  });
                },
              ),
              FlatButton(
              child: Text("Flat Button"),
              onPressed: () {
                setState(() {
                    buttonPressed = "Flat Button presssed";
                  });
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite,
              color: Colors.green,
              ),
              onPressed: () {
                setState(() {
                    buttonPressed = "Icon Button presssed";
                  });
              },
            ),
            

            ],
          ),
          Center(
            
          ),
          Container(
            color: Colors.green,
            child: SizedBox(
              height: 40,
              child: Center(child: Text("Above is a Button Bar", style: TextStyle(color: Colors.white))),
            ),
          ),

          Container(
            decoration: myBoxDecoration(),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Center(child: Text("Border on widget")),
          ),

          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            color: Colors.lightGreenAccent,
            child: Row(
              children: <Widget>[
                Switch(
                  value: isSwitched,
                  onChanged: (value){
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("Switch and Check \n           button"),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (value){
                    
                    setState(() {
                      isChecked = value;
                      print((isChecked).toString());
                    });
                  },
                )
              ],
            ),
          ),

          


        ],
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.transparent,
        // elevation: 0.0,
        child: Icon(Icons.add, color: Colors.white,),
        onPressed: () {
          print("Button clicked");
          setState(() {
                    buttonPressed = "Floating Button presssed";
                  });
        },

      ),
      
    );
  }
}


BoxDecoration myBoxDecoration(){
  return BoxDecoration(
    border: Border.all(
      width: 10,
      color: Colors.greenAccent
    ),
    borderRadius: BorderRadius.circular(20.0),
  
  );
}