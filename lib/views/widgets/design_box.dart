import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../consts/consts.dart';
import '../pages/home/widgets/design_box.dart';

class DesignBox extends StatelessWidget {
  const DesignBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DesignBoxing(
            image: 'code.png',
            texts: "Code",
          ),
          DesignBoxing(
            image:  'design.png',
            texts: "Design",
          ),
          DesignBoxing(
            image: 'business.png',
            texts: "Business",
          ),
        ],
      ),
    );
  }
}
