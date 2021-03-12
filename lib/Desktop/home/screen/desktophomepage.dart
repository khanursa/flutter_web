import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifswebsite/Desktop/home/widgets/desktopbanner.dart';
import 'package:ifswebsite/Desktop/home/widgets/desktopcontactus.dart';
import 'package:ifswebsite/Desktop/home/widgets/desktopfeaturedproduct.dart';
import 'package:ifswebsite/Desktop/home/widgets/desktophomecategory.dart';
import 'package:ifswebsite/Desktop/home/widgets/desktopimageheadline.dart';

class DesktopHomePage extends StatelessWidget {
  static final Size screenSize = MediaQuery.of(Get.context).size;
  const DesktopHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: [
          DesktopImageHeadline(),
          DesktopHomeCategory(),
          DesktopFeaturedProduct(),
          DesktopBanner(),
          DesktopContactUs(),
          footer()
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      height: screenSize.height * 0.05,
      width: screenSize.width,
      decoration: BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Copyright @khair',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
