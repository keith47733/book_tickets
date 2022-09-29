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
      backgroundColor: Styles.bgColor,
      // Appbar
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          fontFamily: 'Oswald',
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
        backgroundColor: Styles.appBarColor,
        foregroundColor: Styles.palette0,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('FLY BY NIGHT'),
            ClipRRect(
              borderRadius: BorderRadius.circular(Styles.defaultRadius),
              child: Image.asset(
                './assets/images/img_1.png',
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Styles.defaultPadding / 2,
            Styles.defaultPadding,
            Styles.defaultPadding / 2,
            Styles.defaultPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Book flight
              Card(
                color: Styles.cardColor,
                elevation: Styles.cardElevation,
                child: Padding(
                  padding: const EdgeInsets.all(Styles.defaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Destination', style: Styles.txtSubTitle),
                      const Gap(Styles.defaultPadding),
                      // Search bar
                      searchBar(),
                    ],
                  ),
                ),
              ),
              const Gap(Styles.defaultPadding),

              // Upcoming flights......view all
              Card(
                color: Styles.cardColor,
                elevation: Styles.cardElevation,
                child: Padding(
                  padding: const EdgeInsets.all(Styles.defaultPadding),
                  child: Column(
                    children: <Widget>[
                      subTitle('Flights', 'View All'),
                      const Gap(Styles.defaultPadding),
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
              const Gap(Styles.defaultPadding),

              // Hotels......view all
              Card(
                color: Styles.cardColor,
                elevation: Styles.cardElevation,
                child: Padding(
                  padding: const EdgeInsets.all(Styles.defaultPadding),
                  child: Column(
                    children: <Widget>[
                      subTitle('Hotels', 'View all'),
                      const Gap(Styles.defaultPadding),
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
      padding: const EdgeInsets.all(Styles.defaultPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Styles.defaultRadius * 1.5),
        color: Styles.searchBarBackground,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            FluentSystemIcons.ic_fluent_search_regular,
            color: Styles.searchBarIcon,
          ),
          Text(
            '   Search',
            style: Styles.txtSearchBar,
          ),
        ],
      ),
    );
  }

  Widget subTitle(String subTitle, String buttonText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(subTitle, style: Styles.txtSubTitle),
        viewAllButton(buttonText),
      ],
    );
  }

  Widget viewAllButton(String buttonText) {
    return ElevatedButton(
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
        buttonText,
        style: Styles.txtViewAll,
      ),
    );
  }
}
