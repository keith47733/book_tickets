import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('NYC', style: Styles.headline3.copyWith(color: Colors.white)),
                      const Spacer(),
											ThickContainer(),
                      Text('London', style: Styles.headline3.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
