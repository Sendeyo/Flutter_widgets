import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/modules/studentModule.dart';
import 'pages/dashboard.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}


// main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: ChangeNotifierProvider<StudentModule>(
//       builder: (context) => StudentModule(),
//       child: Dashboard()),)

//   );
// }



