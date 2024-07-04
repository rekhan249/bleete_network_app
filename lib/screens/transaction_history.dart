import 'package:bleete_network_app/constants/color_constants.dart';
import 'package:bleete_network_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Transaction History",
          style: TextStyle(
              fontWeight: FontWeight.w900, color: commonColor, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
                fit: BoxFit.fitWidth,
                height: 150,
                "assets/images/miningmain.svg"),
            const SizedBox(
              height: 20,
              child: Text(
                "History",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            const CostumHistoryContainer(),
            const SizedBox(height: 10),
            const CostumHistoryContainer(),
            const SizedBox(height: 10),
            const CostumHistoryContainer(),
            const SizedBox(height: 10),
            const CostumHistoryContainer(),
          ],
        ),
      ),
    );
  }
}
