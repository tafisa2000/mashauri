import 'package:flutter/material.dart';

const kMasterCardDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xff342F28),
      Color(0xff28221D),
      Color(0xff191815),
    ],
    //     stops: [
    //   0.4,
    //   0.7,
    //   0.9
    // ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // transform: GradientRotation(
    //     CircularProgressIndicator.strokeAlignCenter)
  ),
);

const kVisaCardDecoration = BoxDecoration(color: Color(0xff52189C));
const kAmericanCardDecoration = BoxDecoration(color: Color(0xff004A8B));

Image masterCardlogo = Image.asset(
  'assets/images/mastertcard.png',
  height: 60,
  // color: Colors.transparent,
);
