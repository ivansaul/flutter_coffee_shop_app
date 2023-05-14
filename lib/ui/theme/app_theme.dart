import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  static const Color backgroundColor = Color(0xff0C0F14);
  static const Color orange1Color = Color(0xffD98046);
  static const Color orange2Color = Color(0xffD17742);
  static const Color gray1Color = Color(0xff4C4F54);
  static const Color gray2Color = Color(0xff52575D);
  static const Color gray3Color = Color(0xff83868D);
  static const Color iconColor = Color(0xff53585C);
  static const Color iconActiveColor = Color(0xffCE7943);
  // Reviews Ratings
  static const Color reviewIconColor = Color(0xffD98046);
  static TextStyle reviewRatting = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  // Style
  static TextStyle tileLarge = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subtileLarge = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  // Search
  static const Color searchCursorColor = Color(0xff52575D);
  static const Color searchBacgroundColor = Color(0xff141821);
  static TextStyle searchTextStyle = GoogleFonts.roboto(
    color: const Color(0xff52575D),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  // Carda Large TextStyle
  static const Color cardChipBackgroundColor = Color(0xff131218);
  static TextStyle cardChipTextStyle = GoogleFonts.roboto(
    color: const Color(0xffA99A97),
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );
  static TextStyle cardTitleLarge = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w800,
  );
  static TextStyle cardTitleMedium = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w800,
  );
  static TextStyle cardTitleSmall = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle cardSubtitleLarge = GoogleFonts.roboto(
    color: const Color(0xffA99A97),
    fontSize: 14,
    fontWeight: FontWeight.w800,
  );
  static TextStyle cardSubtitleMedium = GoogleFonts.roboto(
    color: const Color(0xff83868D),
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static TextStyle cardSubtitleSmall = GoogleFonts.roboto(
    color: const Color(0xff83868D),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  // Price TextStyle
  static TextStyle priceCurrencySmall = GoogleFonts.roboto(
    color: const Color(0xffD98046),
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle priceValueSmall = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle priceCurrencyLarge = GoogleFonts.roboto(
    color: const Color(0xffD98046),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle priceTitleLarge = GoogleFonts.roboto(
    color: const Color(0xff979696),
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static TextStyle priceValueLarge = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // Description TextStyle
  static TextStyle descriptionTitle = GoogleFonts.roboto(
    color: const Color(0xff93969B),
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
  static TextStyle descriptionContent = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );
  static TextStyle descriptionReadMore = GoogleFonts.roboto(
    color: const Color(0xffD07540),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // Chips TextStyle
  static TextStyle chipActive = GoogleFonts.roboto(
    color: const Color(0xffD98046),
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle chipInactive = GoogleFonts.roboto(
    color: const Color(0xff4C4F54),
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  // Buttons Style
  static const Color buttonBackground1Color = Color(0xffD98046);
  static const Color buttonBackground2Color = Color(0xff141823);
  static const Color buttonBorderColor = Color(0xffD17742);
  static TextStyle buttonTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
  static TextStyle buttonActiveTextStyle = GoogleFonts.roboto(
    color: const Color(0xffD17742),
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
  static TextStyle buttonInactiveTextStyle = GoogleFonts.roboto(
    color: const Color(0xffA6A2A2),
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
}
