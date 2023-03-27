import 'package:day_13/screen/login_page.dart';
import 'package:day_13/screen/vaccine_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LogInDemo()));
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'images/bvc1.jpeg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  // Widget _buildImage(String assetName, [double width = 350]) {
  //   return Image.asset('images/bvc1.jpeg', width: width);
  // }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xffF8E0F7),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color(0xffF5A9F2),

      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "What is Vccination?",
          body:
              "Vaccination is a simple, safe, and effective way of protecting people against harmful diseases, before they come into contact with them.",
          image: Image.asset(
            "images/intro1.jpeg",
            height: double.infinity,
            width: double.infinity,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Why should you vaccinate?",
          body:
              "Vaccines trigger your immune response to recognize and fight disease-causing organisms.",
          image: Image.asset(
            "images/intro2.jpeg",
            height: double.infinity,
            width: double.infinity,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "How vaccines work?",
          body:
              "Vaccines teach your immune system how to create antibodies that protect you from diseases. It's much safer for your immune system to learn this through vaccination than by catching the diseases and treating them. Once your immune system knows how to fight a disease, it can often protect you for many years.",
          image: Image.asset(
            "images/intro3.jpg",
            height: double.infinity,
            width: double.infinity,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Vaccination Process",
          body:
              "Vaccination is a simple, safe, and effective way of protecting people against harmful diseases, before they come into contact with them.",
          image: Image.asset(
            "images/intro4.png",
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        // PageViewModel(
        //   image: Image.asset(
        //     "images/intro4.png",
        //     height: double.infinity,
        //   ),
        //   title: "Vaccination Process",
        //   body:
        //       "Vaccination is a simple, safe, and effective way of protecting people against harmful diseases, before they come into contact with them.",
        //   decoration: pageDecoration.copyWith(
        //     contentMargin: const EdgeInsets.symmetric(horizontal: 16),
        //     fullScreen: true,
        //     bodyFlex: 2,
        //     imageFlex: 3,
        //   ),
        // ),
        // PageViewModel(
        //   title: "Another title page",
        //   body: "Another beautiful body text for this example onboarding",
        //   image: Image.asset("images/vc4.jpeg"),
        //   decoration: pageDecoration,
        // ),
        // PageViewModel(
        //   title: "Title of last page - reversed",
        //   bodyWidget: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Text("Click on ", style: bodyStyle),
        //       Icon(Icons.edit),
        //       Text(" to edit a post", style: bodyStyle),
        //     ],
        //   ),
        //   decoration: pageDecoration.copyWith(
        //     bodyFlex: 2,
        //     imageFlex: 4,
        //     bodyAlignment: Alignment.bottomCenter,
        //     imageAlignment: Alignment.topCenter,
        //   ),
        //   image: _buildImage('img1.jpg'),
        //   reverse: true,
        // ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
