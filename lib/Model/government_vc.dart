import 'package:day_13/Model/model.dart';
import 'package:day_13/screen/after_login.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GovernmentDemo extends StatefulWidget {
  const GovernmentDemo({super.key});

  @override
  State<GovernmentDemo> createState() => _GovernmentDemoState();
}

class _GovernmentDemoState extends State<GovernmentDemo> {
  final govlist = Vaccine.ganaratedList();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF5A9F2),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(AfterLogin());
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
          width: double.infinity,
          color: Color(0xffF8E0F7),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Govt. Vaccine ",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 16,
                        child: Container(
                          //color: Colors.red,
                          width: double.infinity,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Enter a search term',
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          height: 60,
                          color: Colors.black,
                          child: Icon(
                            Icons.filter,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Products",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: govlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              color: Color(0xffF5A9F2),
                              child: Image.asset(govlist[index].pic),
                            ),
                            Positioned(
                              top: 5,
                              left: 140,
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      govlist[index].isChoice =
                                          !govlist[index].isChoice;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: govlist[index].isChoice == true
                                        ? Colors.red
                                        : Colors.yellow,
                                  )),
                            ),
                          ],
                        ),
                        Text(govlist[index].name),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  govlist[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(' ${govlist[index].price}'),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  "Order Now",
                                  style: TextStyle(color: Colors.black),
                                ),
                                color: Color(0xffF5A9F2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
