

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_data.dart';

class CategoryTitle extends StatelessWidget {
  final title;
  final index;
  const CategoryTitle({Key? key,required this.index,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 10.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(100.0),
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
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
