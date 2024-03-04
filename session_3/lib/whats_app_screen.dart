import 'package:flutter/material.dart';
import 'package:massdf/chat/chat_screen.dart';
import 'package:massdf/chat_messages/chat_messages_screen.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "WhatsApp",
      home: ChatScreen(),
    );
  }
}
