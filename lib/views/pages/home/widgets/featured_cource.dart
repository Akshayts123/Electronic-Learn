

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/app_data.dart';
import '../../../../consts/consts.dart';
import '../../../../consts/padding.dart';

class FeaturedCource extends StatelessWidget {
  final images;
  final vedio;
  final about;
  final name;
  final price;
  final index;
   FeaturedCource({Key? key,required this.images,required this.vedio,required this.about,required this.name,required this.price,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .6,
      alignment: Alignment.topCenter,
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
      margin: EdgeInsets.only(left: appPadding),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.width * .6,
                width: size.width * .6,
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                      assetImg + AppData.items[index].images,
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(AppData.items[index].vedio),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(AppData.items[index].about,
                style: Theme.of(context).textTheme.labelLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius:
                        BorderRadius.circular(100),
                        child: Image.asset(
                          assetImg + "translate.jpg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(AppData.items[index].name,style:TextStyle(color: Colors.grey) ,),
                    ),
                  ],
                ),
                Text(
                  AppData.items[index].price,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
