import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/custompaint.dart';
import 'package:get/get.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/screens/first.dart';
import 'package:flutter_application_3/screens/third.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text("hi harpreet kaur this side",
                      style: Theme.of(context).textTheme.headline4),
                  Spacer(), // 1/6

                  Spacer(), // 1/6
                 
                  Spacer(flex: 2), // it will take 2/6 spaces
                  
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                CupertinoIcons.arrow_left,
                color: Colors.white,
              ),
              onPressed: () {
                Get.to((MyPainter));
              },
            ),
            IconButton(
              onPressed: () {
                Get.to((ThirdScreen()));
              },
              icon: const Icon(
                CupertinoIcons.arrow_right,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
