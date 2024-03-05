import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mashauri/constant.dart';
// import 'package:intl/intl.dart';
import 'package:mashauri/transaction_tile.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0).copyWith(top: 8, bottom: 15),
      child: const Stack(
        clipBehavior: Clip.none,
        children: [
          TransactionTileContainer(),
          Positioned(bottom: -60, right: 125, child: SeeAllButton())
        ],
      ),
    );
  }
}

class TransactionTileContainer extends StatelessWidget {
  const TransactionTileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        decoration: kMasterCardDecoration,
        child: const Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'RECENT TRANSACTIONS',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            TransactionTile(
              title: 'LUKU',
              cost: '3000',
              category: 'Payment',
            ),
            TransactionTile(
              title: 'GePG Payment',
              cost: '2000',
              category: 'Bill',
            ),
            TransactionTile(
              title: 'Uber Eats',
              cost: '1200',
              category: 'Transfer',
            ),
            TransactionTile(
              title: 'Deni',
              cost: '1000',
              category: 'Transfer',
            ),
            TransactionTile(
              title: 'Malipo',
              cost: '5000',
              category: 'Bill',
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber)),
        onPressed: () {},
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'SEE ALL',
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
