import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

import '../widgets/thick_container.dart';

class Tickets extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const Tickets({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    if (width > 400) {
      width = 400;
    }

    return SizedBox(
      width: width * 0.75,
      //height: AppLayout.getHeight(200),
      child: Container(
        margin: const EdgeInsets.only(right: Styles.defaultPadding),
        child: Column(
          children: <Widget>[
            // Render top blue part of ticket
            Container(
              padding: const EdgeInsets.fromLTRB(
                Styles.defaultPadding,
                Styles.defaultPadding,
                Styles.defaultPadding,
                Styles.defaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: Styles.topTicketColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(Styles.defaultRadius),
                  topRight: Radius.circular(Styles.defaultRadius),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ticket['from']['code'],
                        style: Styles.txtTicketTitle,
                      ),
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
                                      (constraints.constrainWidth() / 7).floor(),
                                      (index) => Container(
                                        width: 4,
                                        height: 1,
                                        color: Styles.ticketGraphic,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Styles.ticketGraphic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Expanded(child: SizedBox()),
                      Text(
                        ticket['to']['code'],
                        style: Styles.txtTicketTitle,
                      ),
                    ],
                  ),
                  const Gap(Styles.defaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(ticket['from']['name'], style: Styles.txtTicketData),
                      Text(ticket['flying_time'], style: Styles.txtTicketData),
                      Text(ticket['to']['name'], style: Styles.txtTicketData),
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
                        color: Styles.cardColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(Styles.defaultPadding * 1.5),
                          bottomRight: Radius.circular(Styles.defaultPadding * 1.5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(Styles.defaultPadding),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 12).floor(),
                              (index) => Container(
                                width: 5,
                                height: 2,
                                color: Styles.ticketGraphic,
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
                        color: Styles.cardColor,
                        borderRadius: const BorderRadius.only(
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
              padding: const EdgeInsets.fromLTRB(
                Styles.defaultPadding,
                0,
                Styles.defaultPadding,
                Styles.defaultPadding,
              ),
              decoration: BoxDecoration(
                color: Styles.bottomTicketColor,
                borderRadius: const BorderRadius.only(
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
                      Text('Date', style: Styles.txtTicketTitle),
                      const Gap(Styles.defaultPadding / 2),
                      Text(
                        ticket['date'],
                        style: Styles.txtTicketData,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Departure Time',
                        style: Styles.txtTicketTitle,
                      ),
                      const Gap(Styles.defaultPadding / 2),
                      Text(
                        ticket['departure_time'],
                        style: Styles.txtTicketData,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Number',
                        style: Styles.txtTicketTitle,
                      ),
                      const Gap(Styles.defaultPadding / 2),
                      Text(
                        '${ticket['number']}',
                        style: Styles.txtTicketData,
                      ),
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
