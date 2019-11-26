import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Dialogs"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: RaisedButton(
              child: Text("Alert dialog"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("You are Terrible"),
                      content: Text("SHowing All"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ),

          Container(
            child: new Snack(),
          ),

          SimpleDialog(
            backgroundColor: Colors.cyan,
            contentPadding: EdgeInsets.all(20),
                  title: Text("This is a simple dialog"),
                  children: <Widget>[
                    Text("This is awsome")
                  ],
                  shape: StadiumBorder(
                    // side: BorderSide()
                  ),
                )



        ],
      ),
      floatingActionButton: new FloaterButton(),
    );
  }
}

class Snack extends StatelessWidget {
  const Snack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Snack bar"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("This is the best bar ever"),
          duration: Duration(seconds: 3),
        ));
      },
    );
  }
}

class FloaterButton extends StatelessWidget {
  const FloaterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text("sheet"),
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) => Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("This is it"),
                Text("This is it"),
                RaisedButton(
                  child: Text("CLose"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
