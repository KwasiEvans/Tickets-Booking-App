import 'package:flutter/material.dart';
import 'package:ticketsbooking/screens/utils/app_layout.dart';
import 'package:ticketsbooking/screens/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Styles.primaryColor,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/one.jpg"),
            ),
          ),
        ),
        const Gap(15),
        Text("Open Space", style: Styles.headlineStyle4),
        const Gap(10),
        Text("Accra",
            style: Styles.headlineStyle3.copyWith(color: Colors.white)),
        const Gap(10),
        Text("\$100/night", style: Styles.headlineStyle4),
      ]),
    );
  }
}
