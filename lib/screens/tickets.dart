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
      width: width * 0.80,
      //height: AppLayout.getHeight(200),
      child: Container(
        margin: const EdgeInsets.only(right: Styles.dfltPadding),
        child: Column(
          children: <Widget>[
            ticketTop(),
            ticketDivider(),
            bottomTicket(),
          ],
        ),
      ),
    );
  }

  Widget ticketTop() {
    return Container(
      padding: const EdgeInsets.all(Styles.dfltPadding),
      decoration: BoxDecoration(
        color: Styles.clrTopTicketBackground,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Styles.dfltRadius),
          topRight: Radius.circular(Styles.dfltRadius),
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
              ticketGraphic(),
              const ThickContainer(),
              const Expanded(child: SizedBox()),
              Text(
                ticket['to']['code'],
                style: Styles.txtTicketTitle,
              ),
            ],
          ),
          const Gap(Styles.dfltPadding / 2),
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
    );
  }

  Widget ticketGraphic() {
    return Expanded(
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
                      color: Styles.clrTicketGraphic,
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
                color: Styles.clrTicketGraphic,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ticketDivider() {
    return Container(
      color: Styles.clrBottomTicketBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          notchLeft(),
          dashedLine(),
          notchRight(),
        ],
      ),
    );
  }

  Widget notchLeft() {
    return SizedBox(
      height: Styles.dfltPadding * 1.5,
      width: Styles.dfltPadding * 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Styles.clrCardBackground,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(Styles.dfltPadding * 1.5),
            bottomRight: Radius.circular(Styles.dfltPadding * 1.5),
          ),
        ),
      ),
    );
  }

  Widget dashedLine() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(Styles.dfltPadding),
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
                  color: Styles.clrTicketGraphic,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget notchRight() {
    return SizedBox(
      height: Styles.dfltPadding * 1.5,
      width: Styles.dfltPadding * 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Styles.clrCardBackground,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Styles.dfltPadding * 1.5),
            bottomLeft: Radius.circular(Styles.dfltPadding * 1.5),
          ),
        ),
      ),
    );
  }

  Widget bottomTicket() {
    return Container(
      padding: const EdgeInsets.all(Styles.dfltPadding),
      decoration: BoxDecoration(
        color: Styles.clrBottomTicketBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(Styles.dfltRadius),
          bottomRight: Radius.circular(Styles.dfltRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Date', style: Styles.txtTicketTitle),
              const Gap(Styles.dfltPadding / 2),
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
                'Departure',
                style: Styles.txtTicketTitle,
              ),
              const Gap(Styles.dfltPadding / 2),
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
                'Flight',
                style: Styles.txtTicketTitle,
              ),
              const Gap(Styles.dfltPadding / 2),
              Text(
                '${ticket['number']}',
                style: Styles.txtTicketData,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
