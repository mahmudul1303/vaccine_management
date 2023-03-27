import 'package:day_13/screen/basic_info.dart';
import 'package:day_13/screen/login_page.dart';
import 'package:day_13/screen/why_vaccinate.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF5A9F2),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
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
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xffF8E0F7),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hello Everyone...",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "WELCOME...",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
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
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage("images/hmi.jpg"), fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ABOUT VACCINE",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_task,
                      color: Colors.black,
                      size: 30,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BasicInfo()));
                            },
                            child: Text(
                              "Basic informaton",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 26),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_task,
                      color: Colors.black,
                      size: 30,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => VaccinateDemo()));
                            },
                            child: Text(
                              "Why should vaccinate?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 26),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LogInDemo()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
