import 'package:bleete_network_app/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat("HH:mm:ss");
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Beetle Network",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: commonColor,
                      fontSize: 18),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.person_3_sharp,
                        color: commonColor,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.notifications,
                        color: commonColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: commonColor),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 12),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          color: commonColor,
                        ),
                        child: const Text(
                          "Coder\nEagle",
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Active",
                                style: TextStyle(color: commonColor),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text(
                              "+10 EAGLE/hr",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: commonColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Text(
                      "POWER UP",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Stack(
                children: [
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Mining Will Stop After",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              dateFormat.format(DateTime.now()),
                              style: const TextStyle(
                                  color: commonColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(120)),
                              border: Border.all(color: commonColor)),
                          child: CircularPercentIndicator(
                            backgroundWidth: 20,
                            radius: 80.0,
                            animation: true,
                            animationDuration: 1200,
                            lineWidth: 8.0,
                            percent: 0.4,
                            center: Column(
                              children: [
                                const SizedBox(height: 30),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(60)),
                                      child: Image.asset(
                                          "assets/images/homepage.gif")),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "3.0508",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "1/1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            circularStrokeCap: CircularStrokeCap.square,
                            backgroundColor: commonColor.withOpacity(0.2),
                            progressColor: commonColor,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              height: 80,
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  color: commonColor.withOpacity(0.1)),
                              child: const Column(
                                children: [
                                  SizedBox(height: 50),
                                  Text(
                                      "Earn extra 25% / active miner in your team"),
                                ],
                              ),
                            ),
                            Positioned(
                              left: screenSize.width * 0.35,
                              top: 0,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: commonColor,
                                    )),
                                child: const Icon(
                                  Icons.person_add_alt_1,
                                  color: commonColor,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: screenSize.width * 0.3,
                    right: screenSize.width * 0.3,
                    top: 0,
                    child: Container(
                        height: 100,
                        decoration: const BoxDecoration(),
                        child: Image.asset("assets/images/front.png")),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
