
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomButtonBox extends StatelessWidget {
  const CustomButtonBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10.5),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            spreadRadius: 0.0,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
