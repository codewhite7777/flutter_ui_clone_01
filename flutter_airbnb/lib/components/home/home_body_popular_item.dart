import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = ['p1.jpeg', 'p2.jpeg', 'p3.jpeg'];

  HomeBodyPopularItem({
    Key? key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        constraints: const BoxConstraints(minWidth: 320),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'asset/images/${popularList[id]}',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: const [
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
          ],
        ),
        const SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          '깔끔하고 다 갖춰져있어서 좋았어요 :) 위치도 완전 좋아용 다들 여기 살구싶다구 ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는것도 전혀 불편함 없이 좋아써용^^ 이불도 포근하고 좋습니당ㅎㅎ',
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('asset/images/p1.jpeg'),
        ),
        const SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              '데어',
              style: subtitle1(),
            ),
            const Text('한국'),
          ],
        ),
      ],
    );
  }
}
