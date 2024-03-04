import 'package:flutter/material.dart';

class StatusCustom extends StatelessWidget {
  const StatusCustom({Key? key , required this.image , required this.name}) : super(key: key);
  final String image;
  final String name;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(image),
        ),
        SizedBox(
          height: 5,



        ),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: Colors.black.withOpacity(0.3)),
        )
      ],
    );
  }
}
