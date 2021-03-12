import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopBanner extends StatelessWidget {
  static final Size screenSize = MediaQuery.of(Get.context).size;
  const DesktopBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: AspectRatio(
              aspectRatio: 16 / 6,
              child: Image.network(
                'https://picsum.photos/id/1001/1600/900',
                fit: BoxFit.fill,
                scale: 1 / 4,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            child: AspectRatio(
              aspectRatio: 16 / 4.45,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://picsum.photos/id/1001/1600/900',
                    fit: BoxFit.fill,
                  ),
                  Spacer(),
                  Image.network(
                    'https://picsum.photos/id/1001/1600/900',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
