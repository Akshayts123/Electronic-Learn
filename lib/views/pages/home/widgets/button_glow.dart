

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonGlow extends StatelessWidget {
  const ButtonGlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 35.0,
      width: 100.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            spreadRadius: 0.0,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Container(
        child: Text("Enroll Now", style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600),)
      ),
    );
  }
}
