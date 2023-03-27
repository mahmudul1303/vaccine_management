import 'package:day_13/screen/login_page.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgetPasswordDemo extends StatefulWidget {
  const ForgetPasswordDemo({super.key});

  @override
  State<ForgetPasswordDemo> createState() => _ForgetPasswordDemoState();
}

class _ForgetPasswordDemoState extends State<ForgetPasswordDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  final GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF5A9F2),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LogInDemo()));
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
      body: Container(
        color: Color(0xffF8E0F7),
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: NetworkImage(
        //           "https://img.freepik.com/free-photo/vaccine-bottle-syringe-held-by-doctor-with-gloves_23-2148801400.jpg?w=2000"),
        //       fit: BoxFit.cover),
        // ),
        child: Container(
            height: double.infinity,
            margin: EdgeInsets.only(top: 230),
            padding: EdgeInsets.symmetric(vertical: 45, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recovery Password',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  CustomeTextField(
                    emailController: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email is empty";
                      }
                      if (value.length < 6) {
                        return "Email is too short(Min 6)";
                      }
                      if (value.length > 10) {
                        return "Email is too Long(Max 20)";
                      }
                      if (!value.contains("@")) {
                        return "Invalid email";
                      }
                    },
                    hintText: "Enter email",
                    icon: Icons.email,
                    inputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Please check your mail & Reset password & log in again",
                                      style: TextStyle(color: Colors.redAccent),
                                    ),
                                  );
                                });
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF5A9F2),
                          elevation: 3,
                        ),
                        child: Text(
                          "Confrim",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class CustomeTextField extends StatelessWidget {
  CustomeTextField({
    Key? key,
    this.icon,
    this.inputType,
    this.hintText,
    this.validator,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextInputType? inputType;
  final String? hintText;
  final IconData? icon;
  final dynamic validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: inputType,
      controller: emailController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey)),

        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black)),
        // prefix: Icon(Icons.mail),
        prefixIcon: Icon(Icons.mail),
        hintText: hintText,
        //labelText: "Enter your mail"
      ),
    );
  }
}
