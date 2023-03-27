import 'package:day_13/home_page.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VaccinateDemo extends StatelessWidget {
  VaccinateDemo({super.key});
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
              Navigator.of(context).pop(HomePage());
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
          color: Color(0xffF8E0F7),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      //color: Colors.amber,
                      image: DecorationImage(
                          image: AssetImage("images/vc7.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Why should I get vaccinated?",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Vaccines protect us from serious diseases and some can also help contain the spread of disease, saving around 2-3 million lives every year. Many of us receive these vaccines, for diseases such as measles, meningitis and pneumonia, as routine childhood immunisations. This has led to these diseases becoming less common, or even eliminated, in areas with high levels of vaccination. Some diseases have the potential to be eradicated, as smallpox was in 1980. But because most can exist in animals or in the environment (for example in the soil), they pose an ever-present threat, which is why it is so important that vaccination coverage remain high. Whenever vaccination levels drop, either because of hesitancy or when services are disrupted, these deadly diseases can quickly rebound. The life-saving power of vaccination is a major reason why global health organisations like Gavi are working hard to get vaccines out to low-resource areas where vaccines are either unaffordable or inaccessible. Even in countries where the risk of infectious disease is low, getting vaccinated is still important in order to protect vulnerable people who can’t be vaccinated, such as people with compromised immune systems (like those with cancer or HIV/AIDS) or people with extreme allergies. In addition, vaccines are not always as effective in triggering a robust immune response in elderly people, who may be more vulnerable to disease, and so widespread immunisation is critical to protecting them.",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "How do vaccines work?",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                Text(
                  "Vaccines prime the immune system to detect a particular virus or bacteria by showing it a harmless version of the pathogen, or part of it – much like giving a bloodhound a rag to sniff – so that it can remember it and is able to mount a defence if the person ever becomes infected. They typically do this by stimulating the production of antibodies, which are proteins made by our bodies to fight disease. This can also help stimulate other parts of our immune defences, such as T cells. This is the basic premise for how all vaccines work; precisely how they achieve this can vary significantly. Some vaccines involve introducing a whole but inactivated (or a whole, live but shortened version) – and therefore safe – version of the germ into the body, while others contain only a specific part (such as a single protein normally found on the surface of the pathogen). In all cases, the aim is to get specific antibody-generating particles, or antigens, such as a protein found on the pathogen, to trigger a strong immune reaction. Some newer forms of vaccine don’t contain the antigen itself, but instead a piece of genetic code for it. When this goes into our body, our own cells are used as factories to make the antigens, which the body then reacts to.",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
