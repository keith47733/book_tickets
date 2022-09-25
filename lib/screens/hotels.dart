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
      width: size.width * 0.60,
      margin: EdgeInsets.only(
        right: Styles.defaultPadding,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Styles.defaultPadding,
        vertical: Styles.defaultPadding,
      ),
      decoration: BoxDecoration(
        color: Styles.hotelColor,
        borderRadius: BorderRadius.circular(Styles.defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Styles.defaultRadius),
              color: Styles.hotelColor,
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/${hotel['image']}')),
            ),
          ),
          Gap(Styles.defaultPadding),
          Text('${hotel['place']}', style: Styles.headline2.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          Gap(Styles.defaultPadding),
          Text(
            '${hotel['destination']}',
            style: Styles.headline3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Gap(Styles.defaultPadding / 2),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headline4.copyWith(
              color: Colors.blueGrey.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
