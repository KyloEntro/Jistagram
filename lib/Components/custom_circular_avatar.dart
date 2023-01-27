import 'package:flutter/material.dart';
import '../Models/profile.dart';

class CustomCircularAvatar extends StatelessWidget {
  const CustomCircularAvatar(
      {super.key, required this.profile, required this.onClick});

  final Profile profile;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    var avatar = Avatar(fileName: profile.imageFile);
    return TextButton(
      onPressed: () {
        onClick(profile.id);
      },
      child: AvatarWithName(avatar: avatar, name: profile.name),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.fileName});

  final String fileName;

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
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(fileName),
        ),
      ),
    );
  }
}

class AvatarWithName extends StatelessWidget {
  const AvatarWithName({super.key, required this.avatar, required this.name});

  final Avatar avatar;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        avatar,
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
