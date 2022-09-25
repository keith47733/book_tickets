import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/styles.dart';
import 'hotels.dart';
import 'tickets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            Styles.defaultPadding / 2,
            Styles.defaultPadding,
            Styles.defaultPadding / 2,
            Styles.defaultPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Gap(Styles.defaultPadding),
              SizedBox(
                height: size.width * 0.40,
                width: size.width,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Styles.defaultRadius),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('./assets/images/img_1.png'),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'FLY BY NIGHT',
                          style: Styles.headline1.copyWith(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(Styles.defaultPadding),
                        Text(
                          'BOOK TICKETS',
                          style: Styles.headline1.copyWith(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(Styles.defaultPadding),
              // Search bar
              Container(
                padding: EdgeInsets.all(Styles.defaultPadding / 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Styles.defaultRadius * 1.5),
                  color: Styles.searchBackground,
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Styles.accentColor,
                    ),
                    Text(
                      '   Search',
                      style: Styles.textDefault,
                    ),
                  ],
                ),
              ),
              Gap(Styles.defaultPadding),
              // Upcoming flights......view all
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Upcoming Flights', style: Styles.headline1),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style: Styles.textDefault,
                    ),
                  ),
                ],
              ),
              Gap(Styles.defaultPadding),
              // Horizontal scrolling tickets
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //padding: EdgeInsets.only(left: Styles.defaultPadding),
                child: Row(
                  children: ticketList.map((singleTicket) => Tickets(ticket: singleTicket)).toList(),
                ),
              ),
              Gap(Styles.defaultPadding),
              // Hotels......view all
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Hotels', style: Styles.headline1),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style: Styles.textDefault,
                    ),
                  ),
                ],
              ),
              Gap(Styles.defaultPadding),
              // Horizontal scrolling hotels
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //padding: EdgeInsets.only(left: Styles.defaultPadding, top: Styles.defaultPadding),
                child: Row(
                  children: hotelList.map((singleHotel) => Hotels(hotel: singleHotel)).toList(),
                ),
              ),
              Gap(Styles.defaultPadding / 2),
            ],
          ),
        ),
      ),
    );
  }
}
