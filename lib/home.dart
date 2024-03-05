import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mashauri/card.dart';
import 'package:mashauri/constant.dart';
import 'package:mashauri/rotation.dart';
// import 'package:mashauri/transaction_history.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212121),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff212121),
        title: const Text(
          'CARDS',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'EDIT',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FlipAnimationContainer(),
            // const SizedBox(
            //   height: 10,
            // ),
            // const TransactionHistory(),
            // CreditCard(
            //   url: 'assets/images/mastertcard.png',
            //   name: 'RUBEN MASHAURI',
            //   decoration: kMasterCardDecoration,
            //   image: masterCardlogo,
            // ),
            CreditCard(
              url: 'assets/images/american.png',
              name: 'KELVIN CHAULA',
              decoration: kAmericanCardDecoration,
              image: masterCardlogo,
            ),
            CreditCard(
              url: 'assets/images/visa.png',
              name: 'OSCAR TAFISA',
              decoration: kVisaCardDecoration,
              image: masterCardlogo,
            ),
          ],
        ),
      ),
    );
  }
}
