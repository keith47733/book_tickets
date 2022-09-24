import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotels({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: 350,
      width: size.width * 0.60,
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Styles.primaryColor,
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/${hotel['image']}')),
            ),
          ),
          const Gap(10),
          Text(
            '${hotel['place']}',
            style: Styles.headline2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            '${hotel['destination']}',
            style: Styles.headline3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headline1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
