import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text(
          '한국 숙소에 직접 다녀간 게스트의 후기',
          style: h5(),
        ),
        Text(
          '게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)',
          style: body1(),
        ),
        const SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildPopularList() {
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
