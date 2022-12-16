import 'package:flutter/material.dart';
import 'package:flutter_kakao/model/user.dart';
import 'package:flutter_kakao/screens/profile_screen.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext) {
                return ProfileScreen(user: user);
              },
            ),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.backgroundImage),
            radius: 20,
          ),
          title: Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            user.intro,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
