import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';
import 'ticket.dart';
import 'hotels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                const Gap(40),
                // Good morning...book tickets......icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Good Morning', style: Styles.headline3),
                        const Gap(5),
                        Text('Book Tickets', style: Styles.headline1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('./assets/images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                // Search bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headline4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                // Upcoming flights......view all
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headline2),
                    InkWell(
                      onTap: () {},
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          // Horizontal scrolling tickets
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const <Widget>[
                Ticket(),
                Ticket(),
              ],
            ),
          ),
          const Gap(15),
          // Upcoming flights......view all
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headline2),
                InkWell(
                  onTap: () {},
                  child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                ),
              ],
            ),
          ),
          const Gap(15),
          // Horizontal scrolling hotels
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const <Widget>[
                Hotels(),
                Hotels(),
								Hotels(),
                Hotels(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
