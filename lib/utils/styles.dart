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

  static const fontSizeSmall = 20.0;
  static const fontSizeMed = 22.0;
  static const fontSizeLarge = 26.0;

	static const double dfltPadding = 16.0;
  static const double dfltRadius = 16.0;

  static final Color clrBackgournd = palette0;

  static final Color clrAppBarr = palette4;

  static const double cardElevation = 5.0;
  static final Color clrCardBackground = palette1;

  static TextStyle txtTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeLarge + 2,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static TextStyle txtSubTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeLarge,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color btnButtonBackground = palette2;
  static TextStyle txtViewAllButton = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color clrSearchBarBackground = palette2;
  static final Color clrSearchBarIcon = palette4;
  static TextStyle txtSearchBar = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color clrTopTicketBackground = palette3;
	static final Color clrTicketDivider = palette3;
  static final Color clrBottomTicketBackground = palette3;
  static final Color clrTicketGraphic = palette1;
  static TextStyle txtTicketTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeMed,
    fontWeight: FontWeight.normal,
    color: palette1,
  );
  static TextStyle txtTicketData = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: palette1,
  );

  static final Color clrHotelBackground = palette3;
  static TextStyle txtHotelTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeLarge,
    fontWeight: FontWeight.normal,
    color: palette2,
  );
  static TextStyle txtHotelSubTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeMed,
    fontWeight: FontWeight.normal,
    color: palette2,
  );
  static TextStyle txtHotelPrice = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: palette1,
  );

  static final Color clrBottomBarBackground = palette4;
  static final Color clrBottomBarSelected = palette1;
  static final Color clrBottomBarInactive = palette2;
}
