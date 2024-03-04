import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:massdf/chat/widgets/chat_custom.dart';
import 'package:massdf/chat/widgets/status_custom_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  final String imageUrl =
      "https://cdn2.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-whatsapp-circle-512.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(
              CupertinoIcons.back
            )),
            FaIcon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
            ),
          ],
        ),
        title: const Text(
          "Chat",
          style: TextStyle(
              fontWeight: FontWeight.w900, color: Colors.black, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.green,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(0.3),
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(0.3),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Status",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatusCustom(
                    name: "Tohamy",
                    image:
                        'https://www.nafham.com/uploads/avatars/47246_540cbb1eeb4e1.jpg',
                  ),
                  StatusCustom(
                    name: "Amr",
                    image:
                        'https://gate.ahram.org.eg/Media/News/2023/11/25/2023-638365291350167367-16.jpg',
                  ),
                  StatusCustom(
                    name: "Tohamy",
                    image:
                        'https://www.nafham.com/uploads/avatars/47246_540cbb1eeb4e1.jpg',
                  ),
                  StatusCustom(
                    name: "Tohamy",
                    image:
                        'https://www.nafham.com/uploads/avatars/47246_540cbb1eeb4e1.jpg',
                  ),
                  StatusCustom(
                    name: "Tohamy",
                    image:
                        'https://www.nafham.com/uploads/avatars/47246_540cbb1eeb4e1.jpg',
                  ),
                  StatusCustom(
                    name: "Tohamy",
                    image:
                        'https://www.nafham.com/uploads/avatars/47246_540cbb1eeb4e1.jpg',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Chats",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => const ChatCustom(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
