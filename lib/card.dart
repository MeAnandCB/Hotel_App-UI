// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/constant.dart';

class Cardview extends StatelessWidget {
  final String url;
  final String price;
  final String title;
  final String Sub_title;
  final String review;

  Cardview({
    required this.url,
    required this.price,
    required this.title,
    required this.Sub_title,
    required this.review,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Whitecolor,
            ),
            height: 315,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  subtitle: Text(Sub_title),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.star,
                        color: Kcolor,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Kcolor,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Kcolor,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Kcolor,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Kcolor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(review)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          Container(
            height: 210.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
            ),
          ),
          Positioned(
              right: 10,
              top: 10,
              child: Icon(
                Icons.star,
                color: Whitecolor,
              )),
          Positioned(
            bottom: 120,
            right: 10,
            child: Container(
              height: 40,
              width: 40,
              color: Whitecolor,
              child: Center(
                  child: Text(
                price,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
