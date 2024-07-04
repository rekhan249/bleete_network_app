import 'package:bleete_network_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CostumHistoryContainer extends StatelessWidget {
  const CostumHistoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 10, offset: Offset(0, 0), color: Colors.grey)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Text(
                  "History",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 16),
                ),
                Text(
                  "History",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 16),
                ),
                Text(
                  "History",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: commonColor)),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  children: [
                    Text(
                      "+1.7710",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "EAGLE",
                      style: TextStyle(
                          color: commonColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
