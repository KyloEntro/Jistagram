import 'package:flutter/material.dart';
import 'custom_circular_avatar.dart';
import '../Resources/profiles.dart';

void nothing(int id) {
  print("Avatar with id = $id clicked");
}

class ProfilesListView extends StatelessWidget {
  List<Widget> buildProfiles() {
    List<Widget> result = [];

    for (var profile in get_profiles()) {
      result.add(const SizedBox(width: 10));
      result.add(
        CustomCircularAvatar(profile: profile, onClick: nothing),
      );
    }
    result.add(const SizedBox(width: 10));

    return result;
  }

  @override
  Widget build(BuildContext context) {
    for (var profile in get_profiles()) {
      precacheImage(AssetImage("${profile.imageFile}"), context);
    }
    return ListView(
      scrollDirection: Axis.horizontal,
      children: buildProfiles(),
    );
  }
}
