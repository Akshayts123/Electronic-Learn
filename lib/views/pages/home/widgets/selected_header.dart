

import 'package:e_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedHeader extends StatelessWidget {
  final username;
  final subtitle;
  final image;
  const SelectedHeader({Key? key,required this.username,required this.subtitle,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            height: 40.0,
            width: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(70.0),
            ),
            child: Container(
              child: Image.asset(
                assetImg + image,
                fit: BoxFit.contain,
                height: 33,
                width: 33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
