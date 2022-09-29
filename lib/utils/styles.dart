import 'package:flutter/material.dart';

class Styles {
  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

  static final Color palette0 = _hexToColor('f8f2eb');
  static final Color palette1 = _hexToColor('F3E9DD');
  static final Color palette2 = _hexToColor('FDF6EC');
  static final Color palette3 = _hexToColor('B7CADB');
  static final Color palette4 = _hexToColor('DAB88B');

  static final Color bgColor = palette0;

  static final Color appBarColor = palette4;

  static const double defaultPadding = 16.0;
  static const double defaultRadius = 16.0;

  static const double cardElevation = 5.0;
  static final Color cardColor = palette1;

  static TextStyle txtTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: 22,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static TextStyle txtSubTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color buttonColor = palette2;
  static TextStyle txtViewAll = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color searchBarBackground = palette2;
  static final Color searchBarIcon = palette4;
  static TextStyle txtSearchBar = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color topTicketColor = palette3;
  static final Color bottomTicketColor = palette3;
  static final Color ticketGraphic = palette1;
  static TextStyle txtTicketTitle = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: palette1,
  );
  static TextStyle txtTicketData = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: palette1,
  );

  static final Color hotelColor = palette3;
  static TextStyle txtHotelTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: palette2,
  );
  static TextStyle txtHotelSubTitle = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: palette2,
  );
  static TextStyle txtHotelPrice = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: palette1,
  );

  static final Color bottomBarColor = palette4;
  static final Color bottomBarSelectedColor = palette0;
  static final Color bottomBarInactiveColor = palette1;
}
