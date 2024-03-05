import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String cost;
  final String category;
  const TransactionTile({
    super.key,
    required this.title,
    required this.cost,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff413C36),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xff28221D),
              radius: 30,
              child: Icon(
                Icons.view_list,
                color: Colors.white,
              ),
            ),
            title: Text(
              '$title',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '$category\n${DateFormat('MM-dd-yyyy hh:mma').format(DateTime.now())} ',
              style: const TextStyle(color: Colors.white60),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'TZS $cost',
                  style: const TextStyle(color: Colors.white),
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                ),
              ],
            ),
            // trailing:
            // const Row(
            //   children: [
            //     Text(
            //       'TZS 3000',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     Icon(
            //       Icons.arrow_right,
            //       color: Colors.white,
            //     )
            //   ],
            // )
          ),
        ),
      ),
    );
  }
}
