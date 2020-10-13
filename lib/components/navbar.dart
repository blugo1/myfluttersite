//Flutter
import 'package:flutter/material.dart';

//Components
import 'package:google_fonts/google_fonts.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return CustomDesktopNavBar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return CustomDesktopNavBar();
      } else {
        return CustomMobileNavBar();
      }
    });
  }
}

class CustomDesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            'Brandos WebPage',
            style: GoogleFonts.pacifico(
              fontSize: 34.0,
            ),
          ),
          Row(
            children: [
              Text(
                'Home',
                style: GoogleFonts.lato(
                  fontSize: 34.0,
                ),
              ),
              Text(
                'About Us',
                style: GoogleFonts.lato(),
              ),
              Text(
                'Portfolio',
                style: GoogleFonts.lato(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
