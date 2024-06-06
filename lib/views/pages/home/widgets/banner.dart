import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/consts.dart';
import '../../../../consts/padding.dart';
import 'button_glow.dart';

class Banner_uni extends StatelessWidget {
  final offer;
  final exclusive;
  const Banner_uni({Key? key,required this.offer,required this.exclusive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Container(
          height: 155,
          margin: EdgeInsets.only(left: appPadding, right: appPadding),
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   offer,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: size.width / 3,
                    child: Text(
                      exclusive,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonGlow(),
                ],
              ),

            ],
          ),
        ),
        Positioned(
          right: -30,
          top: -80,
          child: Container(
            height: 300,
            child: Image.asset(
              assetImg + 'unicorn.png',
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
