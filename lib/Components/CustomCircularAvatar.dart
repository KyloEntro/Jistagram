import 'package:flutter/material.dart';

class CustomCircularAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        TextButton(
          onPressed: () {
            print("Avatar click");
          },
          child: Column(
            children: [
              Avatar(),
              SizedBox(height: 5),
              Text(
                "Céline",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(193, 40, 191, 1),
            Color.fromRGBO(215, 46, 144, 1),
            Color.fromRGBO(235, 84, 61, 1),
            Color.fromRGBO(246, 201, 68, 1)
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      width: 75,
      height: 75,
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2019/03/21/20/29/eyewear-4071870__340.jpg"),
        ),
      ),
    );
  }
}
