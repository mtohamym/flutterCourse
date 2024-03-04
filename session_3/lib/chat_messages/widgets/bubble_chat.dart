import 'package:flutter/material.dart';

class ChatBubbel extends StatelessWidget {
  const ChatBubbel({Key? key , required this.message}) : super(key: key);
  final String  message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Text(message),
    );
  }
}
