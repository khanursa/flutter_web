import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifswebsite/Desktop/home/provider/homepageprovider.dart';
import 'package:ifswebsite/common/ifsassets.dart';
import 'package:provider/provider.dart';

import 'desktoppainterheadline.dart';

class DesktopImageHeadline extends StatelessWidget {
  const DesktopImageHeadline({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final _image = Provider.of<HomePageProvider>(Get.context).image;
    final _items = _image
        .map(
          (item) => Image.network(
            item,
            fit: BoxFit.cover,
          ),
        )
        .toList();
    return Stack(
      children: [
        ClipPath(
          clipper: DesktopPainterHeadline(),
          child: Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: BoxDecoration(color: Colors.teal[700]),
          ),
        ),
        Positioned(
          left: screenSize.width * 0,
          top: screenSize.height * 0.04,
          bottom: screenSize.height * 0.9,
          right: screenSize.width * 0,
          child: Container(
            color: Colors.teal[700],
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  width: screenSize.width * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.image,
                          color: Colors.teal[700],
                          size: 50,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Store",
                        style: TextStyle(
                            color: Colors.teal[700],
                            fontWeight: FontWeight.bold,
                            fontSize: screenSize.width * 0.03),
                      ),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'pulvinar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'elit',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'ante',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'ipsum',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'adipiscing',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.shopping_basket,
                      color: Colors.white,
                    ),
                    Text(
                      '0 quia',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.clip,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: screenSize.width * 0.3,
          height: screenSize.height * 0.7,
          margin: EdgeInsets.only(
            left: screenSize.width * 0.13,
            top: screenSize.height * 0.15,
            bottom: screenSize.height * 0.15,
          ),
          decoration: BoxDecoration(color: Colors.white60),
          child: CarouselSlider(
            items: _items,
            options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
                aspectRatio: 3 / 4),
          ),
        ),
        Positioned(
          left: screenSize.width * 0.5,
          top: screenSize.height * 0.30,
          bottom: screenSize.height * 0.30,
          right: screenSize.width * 0.04,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Lorem Ipsum',
                style: TextStyle(fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                'Neque porro quisquam est qui dolorem ipsum quia',
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: TextStyle(fontSize: screenSize.height * 0.065),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in ante in eros pulvinar suscipit. Sed molestie ipsum sed urna consectetur bibendum. Nam id aliquet libero. Sed imperdiet, ligula et cursus vehicula, ipsum lacus finibus mi, vel dictum felis dui ac lacus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam auctor elit augue. Pellentesque at lorem in arcu pharetra accumsan eget in ex. Pellentesque pellentesque massa sit amet metus euismod pharetra. Duis fringilla nulla orci, vitae euismod nunc ullamcorper facilisis. Suspendisse euismod eu neque in porta. Nam eu felis quis felis vestibulum aliquet. Pellentesque vel.",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 4,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {},
                color: Colors.teal[700],
                splashColor: Colors.teal[700],
                hoverColor: Colors.white.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'consectetur',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
