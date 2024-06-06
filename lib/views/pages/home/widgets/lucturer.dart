

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/consts.dart';

class Lucturers extends StatelessWidget {
  final texts1;
  final texts2;
  final date;
  final time;
  const Lucturers({Key? key,required this.texts1,required this.texts2,required this.date,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width / 1.5,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(17.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                assetImg + "translate.jpg",
                width: 40,
                height: 40,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 0),
                    child: Text(
                      texts1,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 0),
                    child: Text(
                      texts2,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 7),
                child: Row(
                  children: [
                    Text(
                      date,
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          height: 1,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      time,
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          height: 1,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
