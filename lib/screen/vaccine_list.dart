import 'package:day_13/Model/model.dart';
import 'package:day_13/screen/after_login.dart';
import 'package:day_13/screen/book_vaccine.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VaccineList extends StatefulWidget {
  VaccineList({super.key});

  @override
  State<VaccineList> createState() => _VaccineListState();
}

class _VaccineListState extends State<VaccineList> {
  final vcList = AllVaccineList.ganaratedList();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6efe5),
      endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF5A9F2),
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pop(AfterLogin());
              });
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
          color: Color(0xffF8E0F7),
          padding: EdgeInsets.all(15),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Vaccine List",
                  style: TextStyle(color: Colors.blue, fontSize: 26),
                ),
                SizedBox(
                  height: 20,
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
                            hintText: 'Search your vaccine',
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
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vcList.length,
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
                              child: Image.asset(vcList[index].pic),
                            ),
                            Positioned(
                              top: 5,
                              left: 145,
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      vcList[index].isChoice =
                                          !vcList[index].isChoice;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: vcList[index].isChoice == true
                                        ? Colors.red
                                        : Colors.yellow,
                                  )),
                            ),
                          ],
                        ),
                        Text(vcList[index].name),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  vcList[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('\$${vcList[index].price}'),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
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
                                color: Color(0xffF5A9F2),
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
