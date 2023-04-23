import 'package:flutter/material.dart';
import 'package:ticketsbooking/screens/hotel_views/hotel_screen.dart';
import 'package:ticketsbooking/screens/tickets/ticket_one_view.dart';
import 'package:ticketsbooking/screens/tickets/ticket_two_view.dart';
import 'package:ticketsbooking/screens/tickets/ticket_three_view.dart';
import 'package:ticketsbooking/screens/tickets/ticket_four_view.dart';
import 'package:ticketsbooking/screens/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.jpg"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headlineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flight", style: Styles.headlineStyle2),
                    InkWell(
                        onTap: () {
                          print("I am wroking");
                        },
                        child: Text("View all", style: Styles.headlineStyle3)),
                  ],
                )
              ],
            ),
          ),
          const Gap(30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: const [
              TicketOneView(),
              TicketTwoView(),
              TicketThreeView(),
              TicketFourView(),
            ]),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headlineStyle2),
                // const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "View all",
                    style: Styles.headlineStyle3,
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: const [
              HotelScreen(),
              HotelScreen(),
            ]),
          ),
        ],
      ),
    );
  }
}
