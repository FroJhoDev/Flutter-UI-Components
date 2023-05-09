import 'package:flutter/material.dart';

class HomePageRecoveryPassswordComponent extends StatelessWidget {
  const HomePageRecoveryPassswordComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            'Recovery password',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
