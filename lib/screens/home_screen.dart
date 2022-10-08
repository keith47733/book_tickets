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
        titleTextStyle: Styles.txtTitle.copyWith(color: Styles.darken(Styles.palette4, 60)),
        backgroundColor: Styles.clrAppBarrBackground,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('FLY BY NIGHT'),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Styles.dfltRadius / 1.5),
                image: DecorationImage(
                    image: const AssetImage('assets/images/img_1.png'),
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.85),
                      BlendMode.modulate,
                    )),
              ),
            ),
          ],
        ),
      ),

      // Main column
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Styles.dfltPadding / 2,
            Styles.dfltPadding,
            Styles.dfltPadding / 2,
            Styles.dfltPadding / 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Destination card
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  Styles.dfltPadding / 4,
                  0,
                  Styles.dfltPadding / 2,
                ),
                child: Card(
                  color: Styles.clrCardBackground,
                  elevation: Styles.cardElevation,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Styles.dfltRadius / 2),
                  ),
                  // Destination text
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      Styles.dfltPadding,
                      Styles.dfltPadding / 2,
                      Styles.dfltPadding,
                      Styles.dfltPadding,
                    ),
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
              ),

              // Flights card
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  Styles.dfltPadding / 2,
                  0,
                  Styles.dfltPadding / 2,
                ),
                child: Card(
                  color: Styles.clrCardBackground,
                  elevation: Styles.cardElevation,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Styles.dfltRadius / 2),
                  ),
                  child: Column(
                    children: [
                      // Flights ... view all text
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Styles.dfltPadding,
                          Styles.dfltPadding / 2,
                          Styles.dfltPadding,
                          Styles.dfltPadding / 2,
                        ),
                        child: SizedBox(child: subTitle('Flights', 'View all')),
                      ),
											
                      // Horizontal scrolling tickets
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Styles.dfltPadding / 4,
                          Styles.dfltPadding / 2,
                          Styles.dfltPadding / 4,
                          Styles.dfltPadding * 1.5,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: ticketList.map((singleTicket) => Tickets(ticket: singleTicket)).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Hotels card
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  Styles.dfltPadding / 2,
                  0,
                  Styles.dfltPadding / 2,
                ),
                child: Card(
                  color: Styles.clrCardBackground,
                  elevation: Styles.cardElevation,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Styles.dfltRadius / 2),
                  ),

                  // Hotels ... view all text
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Styles.dfltPadding,
                          Styles.dfltPadding / 2,
                          Styles.dfltPadding,
                          Styles.dfltPadding / 2,
                        ),
                        child: SizedBox(child: subTitle('Hotels', 'View all')),
                      ),
                      // Horizontal scrolling hotels
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Styles.dfltPadding / 4,
                          Styles.dfltPadding / 2,
                          Styles.dfltPadding / 4,
                          Styles.dfltPadding * 1.5,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: hotelList.map((singleHotel) => Hotels(hotel: singleHotel)).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Close main column and scaffold
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
            backgroundColor: Styles.btnButtonBackground,
            //foregroundColor: Styles.palette1,
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
