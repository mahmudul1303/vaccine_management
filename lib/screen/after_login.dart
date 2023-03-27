import 'package:day_13/Model/government_vc.dart';
import 'package:day_13/Model/model.dart';

import 'package:day_13/home_page.dart';
import 'package:day_13/screen/book_vaccine.dart';
import 'package:day_13/screen/introduc.dart';
import 'package:day_13/Model/others.dart';
import 'package:day_13/screen/vaccine_list.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AfterLogin extends StatefulWidget {
  const AfterLogin({super.key});

  @override
  State<AfterLogin> createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  final list1 = Catagiries.generatedList();
  final list2 = Vaccine.ganaratedList();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<Widget> items = [GovernmentDemo(), OthersPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF5A9F2),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => OnBoardingPage()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Vaccination System"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: Icon(Icons.menu))
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello...",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 50,
                      width: 50,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Icon(
                                Icons.notifications_none,
                                size: 40,
                              ),
                              Positioned(
                                  right: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                    height: 10,
                                    width: 10,
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  " Let's go for vaccine !",
                  style: TextStyle(fontSize: 18, color: Colors.orange),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        color: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'search your vaccine',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 60,
                          color: Colors.white,
                          child: Icon(
                            Icons.filter_2,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Catagories",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VaccineList()));
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF5A9F2),
                                border: Border.all(width: 3)),
                            padding: EdgeInsets.all(1),
                            alignment: Alignment.center,
                            height: 220,
                            child: Column(
                              children: [
                                Image.asset(
                                  list1[index].pic,
                                  height: 100,
                                  width: 90,
                                ),
                                MaterialButton(
                                  color: Color(0xffF8E0F7),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                items[index]));
                                  },
                                  child: Text(list1[index].name),
                                ),
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount: list1.length),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vaccines",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VaccineList()));
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ))
                  ],
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: list2.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(border: Border.all(width: 3)),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              color: Color(0xffF5A9F2),
                              child: Image.asset(list2[index].pic),
                            ),
                            Positioned(
                              top: 5,
                              left: 145,
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      list2[index].isChoice =
                                          !list2[index].isChoice;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: list2[index].isChoice == true
                                        ? Colors.red
                                        : Colors.yellow,
                                  )),
                            ),
                          ],
                        ),
                        Text(list2[index].name),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  list2[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('\$${list2[index].price}'),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BookingVaccine()));
                                  });
                                },
                                child: Text(
                                  "Order Now",
                                  style: TextStyle(color: Colors.black),
                                ),
                                color: Color(0xffF8E0F7),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
