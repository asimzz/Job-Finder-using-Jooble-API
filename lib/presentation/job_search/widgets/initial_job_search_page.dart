import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialJobSearchPage extends StatelessWidget {
  const InitialJobSearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: SvgPicture.asset(
                "assets/job.svg",
                width: 125.0,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Start searching for your dream Job !!',
              textAlign: TextAlign.center,
              style: GoogleFonts.viga(
                fontSize: 26,
                color: Color(0xFF3A3A3A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
