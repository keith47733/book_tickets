import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

import '../widgets/thick_container.dart';

class Tickets extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const Tickets({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      //height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: Styles.defaultPadding),
        child: Column(
          children: <Widget>[
            // Render top blue part of ticket
            Container(
              padding: EdgeInsets.fromLTRB(
                Styles.defaultPadding,
                Styles.defaultPadding,
                Styles.defaultPadding,
                Styles.defaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: Styles.topTicketColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Styles.defaultRadius),
                  topRight: Radius.circular(Styles.defaultRadius),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(ticket['from']['code'], style: Styles.headline3),
                      const Expanded(child: SizedBox()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 8).floor(),
                                      (index) => Container(
                                        width: 5,
                                        height: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Expanded(child: SizedBox()),
                      Text(ticket['to']['code'], style: Styles.headline3),
                    ],
                  ),
                  Gap(Styles.defaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(ticket['from']['name'], style: Styles.headline4),
                      Text(ticket['flying_time'], style: Styles.headline4),
                      Text(ticket['to']['name'], style: Styles.headline4),
                    ],
                  ),
                ],
              ),
            ),
            // Render ticket divider
            Container(
              color: Styles.bottomTicketColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: Styles.defaultPadding * 1.5,
                    width: Styles.defaultPadding * 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Styles.defaultPadding * 1.5),
                          bottomRight: Radius.circular(Styles.defaultPadding * 1.5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(Styles.defaultPadding),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => Container(
                                width: 5,
                                height: 2,
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Styles.defaultPadding * 1.5,
                    width: Styles.defaultPadding * 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Styles.defaultPadding * 1.5),
                          bottomLeft: Radius.circular(Styles.defaultPadding * 1.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Render bottom part of ticket
            Container(
              padding: EdgeInsets.fromLTRB(
                Styles.defaultPadding,
                0,
                Styles.defaultPadding,
                Styles.defaultPadding,
              ),
              decoration: BoxDecoration(
                color: Styles.bottomTicketColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Styles.defaultRadius),
                  bottomRight: Radius.circular(Styles.defaultRadius),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(ticket['date'], style: Styles.headline3),
                      Gap(Styles.defaultPadding / 2),
                      Text('Date', style: Styles.headline4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(ticket['departure_time'], style: Styles.headline3),
                      Gap(Styles.defaultPadding / 2),
                      Text('Departure Time', style: Styles.headline4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text('${ticket['number']}', style: Styles.headline3),
                      Gap(Styles.defaultPadding / 2),
                      Text('Number', style: Styles.headline4),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
