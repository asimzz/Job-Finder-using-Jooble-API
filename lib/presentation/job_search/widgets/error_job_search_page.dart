import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorJobSearchPage extends StatelessWidget {
  final String message;
  const ErrorJobSearchPage({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.error,
              size: 50.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$message',
            textAlign: TextAlign.center,
            style: GoogleFonts.viga(
              fontSize: 15,
              color: Color(0xFF3A3A3A),
            ),
          ),
        ],
      ),
    );
  }
}
