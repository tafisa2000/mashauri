import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:mashauri/constant.dart';

class CreditCard extends StatelessWidget {
  final Decoration decoration;
  final Image image;
  final String name;
  final String url;
  const CreditCard(
      {super.key,
      required this.decoration,
      required this.image,
      required this.name,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0).copyWith(top: 8, bottom: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 200,
          decoration: decoration,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      url,
                      height: 60,
                      // color: Colors.transparent,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform.rotate(
                        angle: 90 *
                            3.1415926535 /
                            180, // Rotate by -45 degrees (anti-clockwise)
                        child: const Icon(
                          Icons.wifi,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'CARD NUMBER',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '****  ****  0735',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        name,
                        style: const TextStyle(color: Colors.white),
                      )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '02/26',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
