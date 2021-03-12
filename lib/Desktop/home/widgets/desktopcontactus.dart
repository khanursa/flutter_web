import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopContactUs extends StatelessWidget {
  final Size screenSize = MediaQuery.of(Get.context).size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.3),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Masukan Nomor WhatsApp"),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.teal[700],
                    ),
                  ),
                  hoverColor: Colors.green[900],
                ),
              ),
              Text("Masukan pertanyaan anda"),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        // horizontal: screenSize.width * 0.3,
                        vertical: screenSize.height * 0.4),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.teal[700],
                      ),
                    ),
                    hoverColor: Colors.green[900],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
