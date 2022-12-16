import 'package:flutter/material.dart';
import 'package:flutter_kakao/model/user.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('${user.name} clicked');
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user.backgoundImage),
          radius: 20,
        ),
        title: Text(
          user.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          user.intro,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
