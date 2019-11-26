import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Inputs extends StatefulWidget {
  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<Inputs> {

  String question = "What do you like more?";

  TextEditingController nameControler = TextEditingController();


  bool isSwitched = false;
  bool isChecked = false;
  var _date= "Date Picker";
  var _time = "Time Picker";
  var _sliderVal = 20.0;
int radioValue = 0;
var backColor = Colors.white;

void handleRadioValueChanged(int value){
  print("Something happened");
  setState(() {
    radioValue = value;
    switch (value) {
      case 1:
        backColor = Colors.cyanAccent;
        break;
      case 2:
        backColor = Colors.grey;
        break;
      case 3:
        backColor = Colors.lightGreen;
        break;
      default:
    }

  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INPUTS"),
        centerTitle: true,
        // leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: <Widget>[
          // Slider(),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            child: TextField(
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.characters,
              controller: nameControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Enter your name",
                labelStyle: TextStyle(color: Colors.green),
                icon: Icon(Icons.person)
              ),
              onSubmitted: (value) {
                setState(() {
                  question = value + " what do you like more?";
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5.0),
            color: backColor,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(question),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio<int>(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged,
                      activeColor: Colors.blue,
                    ),
                    Text("Cars"),
                    Radio<int>(
                      value: 2,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged,
                      activeColor: Colors.black,
                    ),
                    Text("Computers"),
                    Radio<int>(
                      value: 3,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged,
                      activeColor: Colors.red,
                    ),
                    Text("Girls"),
                    
                    
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Switch button"),
                Switch(
                  value: isSwitched,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Text("Check button"),
                Checkbox(
                  value: isChecked,
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                )
              ],
            )
          ),
          Container(
            child: ButtonBar(
              children: <Widget>[
                // Text(_date),
                RaisedButton(
                  color: backColor,
                  child: Text(_date),
                  onPressed: () {
                    print("Date picker");
                    DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2022, 12, 31),
                      onConfirm: (date) {
                      _date = "${date.day.toString()} / ${date.month.toString()} / ${date.year.toString()}";

                      setState(() {});},
                      currentTime: DateTime.now(), locale: LocaleType.en);
                      
                  },

                  
                    
                
                ),
                RaisedButton(
                  color: backColor,
                  child: Text(_time),
                  onPressed: () {
                    DatePicker.showTimePicker(context,
                    showTitleActions: true,
                    onConfirm: (time){
                      print(time.hour);
                      _time = "${time.hour.toString()} : ${time.minute.toString()} : ${time.second.toString()}";
                      setState(() {
                        
                      });
                    }
                    );
                  },
                )
              ],
            ),
          ),
          Container(
            height: 60,
            //width: 100,
            // color: Colors.grey,
            child: Slider(
              max: 100.0,
              min: 0,
              value: _sliderVal,
              divisions: 10,
              label: _sliderVal.toString(),

              activeColor: Colors.pinkAccent,
              inactiveColor: Colors.pink[200],
              onChanged: (value){
                setState(() {
                  _sliderVal = value;
                });
              },
            ),
          ),
          Container(
            width: _sliderVal,
            height: _sliderVal,
            
            color: Colors.pinkAccent,
            child: Center(child: Text("${_sliderVal.toString()}")),
          )

          // Image.network("https://i.pinimg.com/564x/44/17/e7/4417e715092916b372f3e7cffef488ad.jpg"),
          

        ],
      ),
      
    );
  }
}