// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'dart:convert';
// import 'package:path_provider/path_provider.dart';


// class JsonSave extends StatefulWidget {
//   @override
//   _JsonSaveState createState() => _JsonSaveState();
// }

// class _JsonSaveState extends State<JsonSave> {

//   TextEditingController key = new TextEditingController();
//   TextEditingController value = new TextEditingController();
  
//   File jsonFile;
//   Directory dir;
//   // String content = "";
//   String fileName = "myJsonFile.json";
//   bool fileExist = false;
//   Map<String, String> fileContent;

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   getApplicationDocumentsDirectory().then((Directory directory) {
//   //     dir = directory;
//   //     jsonFile = new File(dir.path + "/" + fileName);
//   //     fileExist = jsonFile.existsSync();
//   //     if (fileExist) this.setState(() {
//   //       print("File exists");
//   //     });
//   //   });
    
//   // }

//   // @override
//   // void dispose() {
//   //   key.clear();
//   //   value.clear();
//   // }

//   // void createFile(Map<String, String> content, Directory dir, String fileName){
//   //   print("Creating file");
//   //   File file = new File(dir.path + "/" + fileName);
//   //   file.createSync();
//   //   fileExist = true;
//   //   file.writeAsStringSync(json.encode(content));
//   // }

//   // void writeToFile(String key, String value){
//   //   print("write to file");
//   //   Map<String, String> content = {key : value};
//   //   if (fileExist){
//   //     print("File Exists");
//   //     Map<String, String> jsonFileContent = json.decode(jsonFile.readAsStringSync());
//   //     jsonFileContent.addAll(content);
//   //     jsonFile.writeAsStringSync(json.encode(jsonFileContent));
//   //   }else{
//   //     print("File Doesn't Exist");
//   //     createFile(content, dir, fileName);
//   //   }
//   // }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Json Tutorial"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               color: Colors.green[100],
//               // width: MediaQuery.of(context).size.width ,
//               child: Column(
//                 children: <Widget>[
//                   Center(child: Text("File Content", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),)),
//                   SizedBox(height: 20,),
//                   Text(fileContent.toString()),
//                   SizedBox(height: 20,),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20,),
            


//             Container(
//               padding: EdgeInsets.all(20),
//               width: MediaQuery.of(context).size.width * 0.8,
//               color: Colors.cyan,
//               child: Column(
                
//                 children: <Widget>[
//                   Center(child: Text("Add Data"),),
//                   TextField(
//                     controller: key,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
//                       labelText: "Enter Key",
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   TextField(
//                     controller: value,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
//                       labelText: "Enter Value",
//                     ),
//                   ),
//                   SizedBox(height: 12,),
//                   RaisedButton(
//                     child: Text("Add"),
//                     onPressed: () {
//                       // writeToFile(key.text.toString(), value.text.toString());

//                     },
//                   )
//                 ],

//               ),
//             ),


//           ],
//         ),
//       ),      
//     );
//   }
// }