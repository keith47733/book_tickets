import 'package:flutter/material.dart';

class Styles {
  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

  static Color darken(Color baseColor, int percent) {
    var f = 1 - percent / 100;
    return Color.fromARGB(
        baseColor.alpha, (baseColor.red * f).round(), (baseColor.green * f).round(), (baseColor.blue * f).round());
  }

  static Color lighten(Color baseColor, int percent) {
    var p = percent / 100;
    return Color.fromARGB(baseColor.alpha, baseColor.red + ((255 - baseColor.red) * p).round(),
        baseColor.green + ((255 - baseColor.green) * p).round(), baseColor.blue + ((255 - baseColor.blue) * p).round());
  }

  static final Color palette1 = _hexToColor('F3E9DD');
  static final Color palette2 = _hexToColor('FDF6EC');
  static final Color palette3 = _hexToColor('B7CADB');
  static final Color palette4 = _hexToColor('DAB88B');

  static const fontSizeSmall = 20.0;
  static const fontSizeMed = 22.0;
  static const fontSizeLarge = 26.0;

  static const double dfltPadding = 16.0;
  static const double dfltRadius = 16.0;

  static final Color clrBackgournd = lighten(palette1, 80);

  static final Color clrAppBarr = palette4;

  static const double cardElevation = 5.0;
  static final Color clrCardBackground = lighten(palette1, 30);

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

  static final Color btnButtonBackground = lighten(palette1, 80);
  static TextStyle txtViewAllButton = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color clrSearchBarBackground = lighten(palette1, 80);
  static final Color clrSearchBarIcon = palette4;
  static TextStyle txtSearchBar = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: palette4,
  );

  static final Color clrTopTicketBackground = darken(palette3, 20);
  static final Color clrTicketDivider = darken(palette3, 20);
  static final Color clrBottomTicketBackground = darken(palette3, 20);
  static final Color clrTicketGraphic = palette1;
  static TextStyle txtTicketTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeMed,
    fontWeight: FontWeight.normal,
    color: lighten(palette1, 40),
  );
  static TextStyle txtTicketData = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: lighten(palette1, 80),
  );

  static final Color clrHotelBackground = darken(palette3, 20);
  static TextStyle txtHotelTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeLarge,
    fontWeight: FontWeight.normal,
    color: lighten(palette2, 40),
  );
  static TextStyle txtHotelSubTitle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: fontSizeMed,
    fontWeight: FontWeight.normal,
    color: lighten(palette2, 40),
  );
  static TextStyle txtHotelPrice = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: fontSizeSmall,
    fontWeight: FontWeight.normal,
    color: lighten(palette1, 80),
  );

  static final Color clrBottomBarBackground = palette4;
  static final Color clrBottomBarSelected = palette1;
  static final Color clrBottomBarInactive = palette2;
}
