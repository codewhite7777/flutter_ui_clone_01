import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: (screenWidth < 520)
            ? const Alignment(0, 0)
            : const Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          '모두의숙소에서 숙소를 검색하세요.',
          style: h4(),
        ),
        const SizedBox(height: gap_xs),
        Text(
          '혼자하는 여행이 적합한 개인실부터 여럿이 함께하는 여행에 좋은 \'공간전체\' 숙소까지, 모두의 숙소에 다 있습니다.',
          style: body1(),
        ),
        const SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        const CommonFormField(prefixText: '위치', hintText: '근처 추천 장소'),
        const SizedBox(height: gap_s),
        Row(
          children: const [
            Expanded(
              child: CommonFormField(
                prefixText: '체크인',
                hintText: '날짜 입력',
              ),
            ),
            Expanded(
              child: CommonFormField(
                prefixText: '체크아웃',
                hintText: '날짜 입력',
              ),
            ),
          ],
        ),
        const SizedBox(height: gap_s),
        Row(
          children: const [
            Expanded(
              child: CommonFormField(
                prefixText: '성인',
                hintText: '2',
              ),
            ),
            Expanded(
              child: CommonFormField(
                prefixText: '어린이',
                hintText: '0',
              ),
            ),
          ],
        ),
        const SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          '검색',
          style: subtitle1(mColor: Colors.white),
        ),
      ),
    );
  }
}
