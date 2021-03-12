import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifswebsite/Desktop/home/provider/homepageprovider.dart';
import 'package:provider/provider.dart';

class DesktopHomeCategory extends StatelessWidget {
  final screenSize = MediaQuery.of(Get.context).size;
  @override
  Widget build(BuildContext context) {
    final image = Provider.of<HomePageProvider>(context).image;
    return Container(
      height: screenSize.height * 0.5,
      width: screenSize.width,
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.08,
          vertical: screenSize.height * 0.05),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            content(image[0]),
            Spacer(),
            content(image[3]),
            Spacer(),
            content(image[5]),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget content(String image) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal[700], width: 2.0),
            ),
            child: AspectRatio(
              aspectRatio: 2 / 2,
              child: Image.network(
                image,
                fit: BoxFit.fill,
                scale: 0.5,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -screenSize.height * 0.00,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {
              print("object");
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.teal[700],
            focusColor: Colors.white.withOpacity(0.5),
            splashColor: Colors.teal[700],
            hoverColor: Colors.white.withOpacity(0.5),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Loream Ipsum',
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.height * 0.03,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Loream',
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.height * 0.02,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // )
      ],
    );
  }
}
