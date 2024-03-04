import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:massdf/chat/chat_screen.dart';
import 'package:massdf/whats_app_screen.dart';

void main() {
  runApp(const WhatsAppScreen());
}








// class AmitFirst extends StatelessWidget {
//   const AmitFirst({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Tohamy App",
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           title: const Text("Login",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w300,
//                   fontStyle: FontStyle.normal)),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Image.network(
//                 "https://pngimg.com/uploads/tea/tea_PNG16904.png",
//                 width: 150,
//                 height: 150,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   floatingLabelBehavior: FloatingLabelBehavior.never,
//                   fillColor: Color(0xFFE3E3E3),
//                   filled: true,
//                   hintText: "please enter email",
//                   label: Text("Email"),
//                   hintStyle: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       color: CupertinoColors.systemGrey2),
//                   enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFB6B6B6)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFF5F5F5)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//                   disabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFB6B6B6)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//                   errorBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFB6B6B6)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//
//                   // errorBorder: ,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   floatingLabelBehavior: FloatingLabelBehavior.never,
//                   fillColor: Color(0xFFE3E3E3),
//                   filled: true,
//                   hintText: "please enter password",
//                   label: Text("Password"),
//                   hintStyle: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       color: CupertinoColors.systemGrey2),
//                   enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFB6B6B6)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFF5F5F5)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//                   disabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFB6B6B6)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//                   errorBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 0, color: Color(0xFFB6B6B6)),
//                       borderRadius: BorderRadius.all(Radius.circular(10.5))),
//
//                   // errorBorder: ,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     print("object");
//                   },
//                   child: Text("Login", style: TextStyle(color: Colors.white)),
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.5))
//                       )),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
