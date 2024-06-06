

import 'package:e_app/consts/app_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/consts.dart';

class SmallWidgets extends StatelessWidget {
  final image;
  final texts;
  final texts2;
  final rate;
  const SmallWidgets({Key? key,required this.image,required this.texts,required this.texts2,required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 230,
                  height: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(17.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10.0,
                          offset: Offset(0, 5),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                          BorderRadius.circular(15),
                          child: SizedBox(
                            width: 230,
                            height: 150,
                            child: Image.asset(
                              assetImg + image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,top: 9),
                                    child: Text(
                                      texts,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,height: 1, fontSize: 14, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:10.0,top: 5),
                                    child: Text(
                                      texts2,
                                      style:GoogleFonts.poppins(
                                          color: Colors.white,height: 1, fontSize: 14, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Image.asset(assetImg+"star.png",width: 16,),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 11)
                                  ,child: Text(
                                        rate,
                                        style:GoogleFonts.poppins(
                                            color: Colors.white,height: 1, fontSize: 14, fontWeight: FontWeight.w600),
                                      ),)
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
