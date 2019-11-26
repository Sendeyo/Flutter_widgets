import 'package:flutter/material.dart';

class Information extends StatefulWidget {

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information Display"),
      ),
      body: Container(
        child: Column(
          
          children: <Widget>[
            SizedBox(height: 10,),
            InkWell(
              child: Card(
              elevation: 20,
              child: ListTile(
                leading: Icon(Icons.perm_contact_calendar),
                title: Text("This a card to show a Dialog"),
                subtitle: Text("Please Respect it"),
              ),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Chip selections"),
                    content: Choices(),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Close"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }
              );
            },
            ),
            Clickable(),
            SizedBox(height: 20,),
            Container(
              child: Text("Body parts and Use table"),
            ),
            new Tables(),
          ],
        ),
      ),
      
    );
  }
}

class Tables extends StatelessWidget {
  const Tables({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Table(
        border: TableBorder.all(width: 1, style: BorderStyle.solid),
        children: [
          TableRow(children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Organ"),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Purpose"),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Number"),
              ),
            ),
          ]),
          TableRow(children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Eye"),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Visual sence(seeing)"),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(),

              ),
            ),
          ])
        ],
        
      ),
    );
  }
}

class Choices extends StatefulWidget {
  const Choices({
    Key key,
  }) : super(key: key);

  @override
  _ChoicesState createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      child: ChoiceChip(
        label: Text("I hate programing"),
        selected: isSelected,
        // selectedColor: Colors.pink,
        onSelected: (value) {
          print(value);
          setState(() {
            isSelected = value;
          });
          
        },
      ),


    );
  }
}

class Clickable extends StatelessWidget {
  const Clickable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 20,
        child: ListTile(
          leading: Icon(Icons.perm_contact_calendar),
          title: Text("This is to show Snack bar"),
          subtitle: Text("Please click it and see"),
        ),
      ),
      onTap: () {
       Scaffold.of(context).showSnackBar(
         SnackBar(
           content: Text("This Card is Clickabke"),
           duration: Duration(seconds: 2),
         )
       );
      },
    );
  }
}