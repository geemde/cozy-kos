import 'package:flutter/material.dart';
import 'package:bwa_cozy/models/tips.dart';

import '../theme.dart';

class TipsCard extends StatelessWidget {

  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
            width: 80,
            height: 80,
            child: Stack(
              children: [
                Image.asset(tips.imageUrl),
              ],
            ),
          ),
        ),

        SizedBox(
          width: 16,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tips.name,
            style: blackTextStyle.copyWith(
              fontSize: 18
            ),),
            SizedBox(
              height: 4,
            ),
            Text('Updated ${tips.date}',
            style: greyTextStyle.copyWith(
              fontSize: 14
            ),)
          ],
        ),
        Spacer(),
        IconButton(onPressed: (){}, 
        icon: Icon(Icons.chevron_right),
        color: greyColor,)
      ],
    );
  }
}