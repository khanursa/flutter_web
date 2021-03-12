import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifswebsite/Desktop/home/provider/homepageprovider.dart';
import 'package:provider/provider.dart';

class DesktopFeaturedProduct extends StatelessWidget {
  final screenSize = MediaQuery.of(Get.context).size;
  final _image = Provider.of<HomePageProvider>(Get.context).image;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenSize.height * 0.95,
        width: screenSize.width,
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.05,
            vertical: screenSize.height * 0.05),
        // decoration:
        // BoxDecoration(border: Border.all(color: Colors.green[900], width: 3),),
        child: gridContent());
  }

  Widget gridContent() {
    return AspectRatio(
      aspectRatio: 15 / 14,
      // color: Colors.blue,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 10 / 14,
            child: verticalContent(
              screenSize.height * 0.8,
              screenSize.width * 0.35,
            ),
          ),
          Spacer(),
          AspectRatio(
            aspectRatio: 7 / 16,
            child: verticalContent(
              screenSize.height * 0.8,
              screenSize.width * 0.23,
            ),
          ),
          Spacer(),
          AspectRatio(
            aspectRatio: 7 / 12,
            child: Column(
              children: [
                horizontalContent(),
                Spacer(),
                horizontalContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget verticalContent(double height, double width) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.teal[700], width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  _image[0],
                  fit: BoxFit.fill,
                  scale: 16 / 9,
                ),
              ),
              Text(
                "Rp x.xxx.xxx",
                style: TextStyle(
                  fontSize: screenSize.height * 0.03,
                  fontWeight: FontWeight.w400,
                  color: Colors.green[900],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Loream Ipsum",
                    style: TextStyle(
                      fontSize: screenSize.height * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.store),
                  Icon(Icons.store),
                  Icon(Icons.store),
                  Icon(Icons.chat),
                ],
              ),
            ],
          ),
          Container(
            width: screenSize.width,
            padding: EdgeInsets.only(top: screenSize.height * 0.05),
            child: Text(
              "Loream Ipsum",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: TextStyle(
                fontSize: screenSize.height * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.green[900],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget horizontalContent() {
    return Container(
      width: screenSize.width * 0.3,
      height: screenSize.height * 0.375,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.teal[700], width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                Image.network(
                  _image[0],
                  fit: BoxFit.fill,
                  scale: 16 / 9,
                  width: screenSize.width * 0.3,
                ),
              ],
            ),
          ),
          Text(
            "Loream Ipsum",
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: TextStyle(
              backgroundColor: Colors.white,
              fontSize: screenSize.height * 0.03,
              fontWeight: FontWeight.bold,
              color: Colors.green[900],
            ),
          ),
          Text(
            "Rp. 1000.000",
            style: TextStyle(
              fontSize: screenSize.width * 0.02,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                "Pesan di sini : ",
                style: TextStyle(
                  fontSize: screenSize.height * 0.02,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(Icons.store),
              Icon(Icons.store),
              Icon(Icons.store),
              Icon(Icons.chat),
            ],
          )
        ],
      ),
    );
  }
}
