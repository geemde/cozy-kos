import 'package:flutter/material.dart';

import '../theme.dart';

class FacilityItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int total;

  FacilityItem(this.imageUrl, this.total, this.name);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
              text: '${total}',
              style: purpleTextStyle.copyWith(fontSize: 14),
              children: [
                TextSpan(
                    text: ' ' + name,
                    style: greyTextStyle.copyWith(fontSize: 14)),
              ]),
        ),
      ],
    );
  }
}
