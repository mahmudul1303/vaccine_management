import 'package:day_13/screen/introduc.dart';
import 'package:day_13/screen/login_page.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateAccountDemo extends StatefulWidget {
  const CreateAccountDemo({super.key});

  @override
  State<CreateAccountDemo> createState() => _CreateAccountDemoState();
}

class _CreateAccountDemoState extends State<CreateAccountDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  final GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF5A9F2),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
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
      body: Container(
        width: double.infinity,
        color: Color(0xffF8E0F7),
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
                    'Create an account',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Start your journey with us',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter your name",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.phone_android),
                      hintText: "Enter  Phone_number",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomeTextField(
                    emailController: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email is empty";
                      }
                      if (value.length < 3) {
                        return "Email is too short(Min 3)";
                      }
                      if (value.length > 10) {
                        return "Email is too Long(Max 10)";
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
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is empty";
                      }
                      if (value.length < 3) {
                        return "Password is too short(Min 3)";
                      }
                      if (value.length > 30) {
                        return "Password is too Long(Max 30)";
                      }
                    },
                    obscureText: isObsecure,
                    obscuringCharacter: "*",
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey)),

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black)),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(
                          isObsecure == false
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                      ),
                      // prefix: Icon(Icons.mail),
                      prefixIcon: Icon(Icons.password),
                      hintText: "Enter your Password",
                      //labelText: "Enter your mail"
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LogInDemo()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF5A9F2),
                          elevation: 12,
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 20),
                        )),
                  )
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
