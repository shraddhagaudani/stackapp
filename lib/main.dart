import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:stackapp/views/screens/home_page.dart';
import 'package:stackapp/views/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      getPages: [
        GetPage(name: '/splash_screen', page: () => const Splash_screen()),
        GetPage(name: '/home_page', page: () => const Home_page()),
      ],
    ),
  );
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stacked Containers'),
//         ),
//         body: Center(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               // First Container (bottom)
//               Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.blue,
//               ),
//
//               // Second Container (top)
//               Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.red,
//                 child: Center(
//                   child: Text(
//                     'Stacked!',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
