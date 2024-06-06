

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/consts.dart';

class DesignBoxing extends StatelessWidget {
  final image;
  final texts;
  const DesignBoxing({Key? key,required this.image,required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
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
                  child: Image.asset(
                    assetImg + image,
                    color: Colors.white,
                    height: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(texts,style: Theme.of(context).textTheme.headlineMedium,)
            ],
          ),
        ),
      ),
    );
  }
}
