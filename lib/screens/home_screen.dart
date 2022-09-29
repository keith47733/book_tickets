import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/styles.dart';
import 'hotels.dart';
import 'tickets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.clrBackgournd,
      // Appbar
      appBar: AppBar(
        titleTextStyle: Styles.txtTitle.copyWith(color: Styles.palette1),
        backgroundColor: Styles.clrAppBarr,
        foregroundColor: Styles.palette0,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('FLY BY NIGHT'),
            Container(
              height: 50,
							width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Styles.dfltRadius),
                image: DecorationImage(
                  image: const AssetImage('assets/images/img_1.png'),
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.7), BlendMode.modulate,)
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Styles.dfltPadding / 2,
            Styles.dfltPadding,
            Styles.dfltPadding / 2,
            Styles.dfltPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Book flight
              Card(
                color: Styles.clrCardBackground,
                elevation: Styles.cardElevation,
                child: Padding(
                  padding: const EdgeInsets.all(Styles.dfltPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Destination', style: Styles.txtSubTitle),
                      const Gap(Styles.dfltPadding),
                      // Search bar
                      searchBar(),
                    ],
                  ),
                ),
              ),
              const Gap(Styles.dfltPadding),

              // Upcoming flights......view all
              Card(
                color: Styles.clrCardBackground,
                elevation: Styles.cardElevation,
                child: Padding(
                  padding: const EdgeInsets.all(Styles.dfltPadding),
                  child: Column(
                    children: <Widget>[
                      subTitle('Flights', 'View all'),
                      const Gap(Styles.dfltPadding),

                      // Horizontal scrolling tickets
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: ticketList.map((singleTicket) => Tickets(ticket: singleTicket)).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(Styles.dfltPadding),

              // Hotels......view all
              Card(
                color: Styles.clrCardBackground,
                elevation: Styles.cardElevation,
                child: Padding(
                  padding: const EdgeInsets.all(Styles.dfltPadding),
                  child: Column(
                    children: <Widget>[
                      subTitle('Hotels', 'View all'),
                      const Gap(Styles.dfltPadding),
                      // Horizontal scrolling hotels
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: hotelList.map((singleHotel) => Hotels(hotel: singleHotel)).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
							
              // Close out Scaffold
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      padding: const EdgeInsets.all(Styles.dfltPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Styles.dfltRadius * 1.5),
        color: Styles.clrSearchBarBackground,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            FluentSystemIcons.ic_fluent_search_regular,
            color: Styles.clrSearchBarIcon,
          ),
          Text(
            '   Search',
            style: Styles.txtSearchBar,
          ),
        ],
      ),
    );
  }

  Widget subTitle(String subTitle, String btnText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(subTitle, style: Styles.txtSubTitle),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Styles.palette2,
            foregroundColor: Styles.palette1,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          child: Text(
            btnText,
            style: Styles.txtViewAllButton,
          ),
        ),
      ],
    );
  }
}
