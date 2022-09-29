import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotels({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    if (width > 400) {
      width = 400;
    }

    return Container(
      width: width * 0.60,
      margin: const EdgeInsets.only(
        right: Styles.dfltPadding,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Styles.dfltPadding,
        vertical: Styles.dfltPadding,
      ),
      decoration: BoxDecoration(
        color: Styles.clrHotelBackground,
        borderRadius: BorderRadius.circular(Styles.dfltRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Styles.dfltRadius),
              color: Styles.clrHotelBackground,
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/${hotel['image']}')),
            ),
          ),
          const Gap(Styles.dfltPadding),
          Text('${hotel['place']}', style: Styles.txtHotelTitle),
          const Gap(Styles.dfltPadding),
          Text(
            '${hotel['destination']}',
            style: Styles.txtHotelSubTitle,
          ),
          const Gap(Styles.dfltPadding / 2),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.txtHotelPrice,
          ),
        ],
      ),
    );
  }
}
