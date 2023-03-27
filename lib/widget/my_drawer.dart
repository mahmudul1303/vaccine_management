import 'dart:ui';

import 'package:day_13/home_page.dart';
import 'package:day_13/screen/book_vaccine.dart';
import 'package:day_13/screen/login_page.dart';
import 'package:day_13/screen/share.dart';
import 'package:day_13/screen/support.dart';
import 'package:day_13/screen/vaccine_list.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/vc6.jpeg"),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: AssetImage("images/vc3.jpeg")),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.maps_home_work),
                        Text(
                          " Location",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                color: Color(0xffF8E0F7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DrawerItem(
                      tittle: "Profile",
                      icon: Icons.person,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LogInDemo()));
                      },
                    ),
                    /*DrawerItem(
                      tittle: "Setting",
                      icon: Icons.settings,
                      onTap: () {},
                    ),*/
                    Divider(
                      color: Colors.black,
                      height: 20,
                      //indent: 20,
                      // endIndent: 20,
                      thickness: 2,
                    ),
                    DrawerItem(
                      tittle: "Vaccine List",
                      icon: Icons.list,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VaccineList()));
                      },
                    ),
                    DrawerItem(
                      tittle: "Booking List",
                      icon: Icons.book_online,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BookingVaccine()));
                      },
                    ),
                    // DrawerItem(
                    //   tittle: "Order Confrim",
                    //   icon: Icons.chat_rounded,
                    //   onTap: () {},
                    // ),
                    DrawerItem(
                      tittle: "Reviews & Services",
                      icon: Icons.reviews,
                      onTap: () {},
                    ),
                    // DrawerItem(
                    //   tittle: "Reports",
                    //   icon: Icons.report,
                    //   onTap: () {},
                    // ),
                    DrawerItem(
                      tittle: "Sigh Out",
                      icon: Icons.outbox_sharp,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                    ),
                    Spacer(),
                    Divider(
                      color: Colors.black,
                      height: 50,
                      //indent: 20,
                      // endIndent: 20,
                      thickness: 2,
                    ),
                    DrawerItem(
                      tittle: "Share",
                      icon: Icons.share,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ShareDemo()));
                      },
                    ),
                    DrawerItem(
                      tittle: "Support",
                      icon: Icons.support_agent,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SupportDemo()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  DrawerItem({this.icon, this.tittle, this.onTap});

  String? tittle;
  IconData? icon;
  dynamic? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black87,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "${tittle}",
              style: TextStyle(color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
