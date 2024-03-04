import 'package:flutter/material.dart';
import 'package:massdf/chat/chat_screen.dart';
import 'package:massdf/chat_messages/chat_messages_screen.dart';

class ChatCustom extends StatelessWidget {
  const ChatCustom({Key? key}) : super(key: key);
  final String imageUrl =
      "https://cdn2.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-whatsapp-circle-512.png";

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatMessages(),));

          },

          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: Text("Tohamy" ,style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),),
          subtitle: Text("Well Done" ,style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400
          ),),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("4:46" , style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500
              ), ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10,
                child: Text("1" , style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                ),),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
