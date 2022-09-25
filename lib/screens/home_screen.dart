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
      body: SingleChildScrollView(
				child: Column(
					children: <Widget>[
						Container(
							padding: EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
							child: Column(
								children: <Widget>[
									Gap(Styles.defaultPadding),
									// Good morning...book tickets......icon
									Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: <Widget>[
											Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: <Widget>[
													Text('Fly By Night', style: Styles.headline2),
													//Gap(Styles.defaultPadding / 2),
													Text('Book Tickets', style: Styles.headline1),
												],
											),
											Container(
												width: 80,
												height: 80,
												decoration: BoxDecoration(
													borderRadius: BorderRadius.circular(Styles.defaultRadius),
													image: const DecorationImage(
														fit: BoxFit.cover,
														image: AssetImage('./assets/images/img_1.png'),
													),
												),
											),
										],
									),
									Gap(Styles.defaultPadding),
									// Search bar
									Container(
										padding: EdgeInsets.symmetric(
											horizontal: Styles.defaultPadding,
											vertical: Styles.defaultPadding,
										),
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(Styles.defaultRadius),
											color: Colors.grey.shade200,
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
										children: [
											Text('Upcoming Flights', style: Styles.headline1),
											InkWell(
												onTap: () {},
												child: Text(
													'View all',
													style: Styles.textDefault,
												),
											),
										],
									)
								],
							),
						),
						Gap(Styles.defaultPadding),
						// Horizontal scrolling tickets
						SingleChildScrollView(
							scrollDirection: Axis.horizontal,
							padding: EdgeInsets.only(left: Styles.defaultPadding),
							child: Row(
								children: ticketList.map((singleTicket) => Tickets(ticket: singleTicket)).toList(),
							),
						),
						// Hotels......view all
						Gap(Styles.defaultPadding),
						Padding(
							padding: EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
							child: Row(
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
						),
						// Horizontal scrolling hotels
						SingleChildScrollView(
							scrollDirection: Axis.horizontal,
							padding: EdgeInsets.only(left: Styles.defaultPadding, top: Styles.defaultPadding),
							child: Row(
								children: hotelList.map((singleHotel) => Hotels(hotel: singleHotel)).toList(),
							),
						),
					],
				),
			),
    );
  }
}
