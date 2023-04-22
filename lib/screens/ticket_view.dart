import 'package:flutter/material.dart';
import 'package:ticketsbooking/screens/utils/app_layout.dart';
import 'package:ticketsbooking/screens/utils/app_styles.dart';
import 'package:ticketsbooking/widgets/thick_contianer.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 100,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF526799),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("ACCRA",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder:
                                    (BuildContext, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text("Ghana",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Kasoa",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text("24h 40M",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New York",
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
