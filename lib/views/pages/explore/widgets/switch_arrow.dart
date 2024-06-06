
import 'package:e_app/consts/padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../consts/app_data.dart';
import '../../../../consts/consts.dart';

class SwitchArrow extends StatefulWidget {

  final bool isSwitch;
  final names;
  const SwitchArrow({Key? key, required this.isSwitch ,required this.names,}) : super(key: key);

  @override
  State<SwitchArrow> createState() => _SwitchArrowState();
}

class _SwitchArrowState extends State<SwitchArrow> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width * .12,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.names,
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              (widget.isSwitch)
                  ? CupertinoSwitch(
                value: switchValue,
                activeColor: Theme.of(context).primaryColor,
                onChanged: (bool newValue) {
                  setState(() {
                    switchValue = newValue;
                  });
                },
              )
                  : SvgPicture.asset(assetImg + 'arrow_up_icon.svg',color: Theme.of(context).primaryColor,),
            ],
          ),
        ],
      ),
    );
  }
}
