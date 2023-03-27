import 'package:day_13/home_page.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BasicInfo extends StatelessWidget {
  BasicInfo({super.key});
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
                          image: AssetImage("images/bci.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "What is a vaccine?",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Vaccines differ from other medical drugs in two important ways. The first is that they are designed to prevent disease, rather than treat it. They do this by priming a person’s immune system to recognise a specific disease-causing bacteria, virus or other pathogen. This “memory” can last years, or in some cases for life, which is why vaccination can be so effective, stopping people from getting sick rather than waiting until disease occurs. The second is that vaccines by their nature tend to be biological products, rather than chemical like most drugs. This not only means that the processes involved in making them are usually more complex and expensive, but also that they tend to be less stable than chemicals and more vulnerable to temperature changes. Because of this, vaccines normally need to be refrigerated to keep them within a specific temperature range. The type of vaccine will determine how low a temperature the vaccine needs to be stored at. Most vaccines need to be kept refrigerated or frozen, but intranasal vaccines are now being developed that can be stored at room temperature.",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Vaccine Safety",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                Text(
                  "The United States has one of the most advanced systems in the world for tracking vaccine safety. Each of the systems below supplies a different type of data for researchers to analyze. Together, they help provide a full picture of vaccine safety. Vaccine Adverse Events Reporting System (VAERS): VAERS is an early warning system managed by CDC and FDA that is designed to find possible vaccine safety issues. Patients, health care professionals, vaccine companies, and others can use VAERS to report side effects that happen after a patient received a vaccine. Some side effects might be related to vaccination while others might be a coincidence (happen by chance). VAERS helps track unusual or unexpected patterns of reporting that could mean there’s a possible vaccine safety issue that needs further evaluation. The Vaccine Safety Datalink (VSD): VSD is a collaboration between CDC and several health care organizations across the nation. VSD uses databases of medical records to track vaccine safety and do research in large populations. By using medical records instead of self-reports, VSD can quickly study and compare data to find out if reported side effects are linked to a vaccine. Post-licensure Rapid Immunization Safety Monitoring System (PRISM) exit disclaimer icon: PRISM is part of the Sentinel Initiative, which is FDA’s national system for monitoring medical products after they’re licensed for use. PRISM focuses on vaccine safety—it uses a database of health insurance claims to identify and evaluate possible safety issues for licensed vaccines. Clinical Immunization Safety Assessment Project (CISA): CISA is a collaboration between CDC and a national network of vaccine safety experts from medical research centers. CISA does clinical vaccine safety research and—at the request of providers—evaluates complex cases of possible vaccine side effects in specific patients. Biologics Effectiveness and Safety (BEST) System: A system that uses multiple data sources and rapid queries to detect or evaluate adverse events or study specific safety questions. Additional research and testing: The Department of Defense (DoD), the U.S. Department of Veterans Affairs (VA), and the Indian Health Service (IHS) have systems to monitor vaccine safety and do vaccine safety research. The National Institutes of Health (NIH) and the Office of Infectious Disease and HIV/AIDS Policy (OIDP) also support ongoing research on vaccines and vaccine safety. During emergencies, such as the COVID-19 pandemic, additional safety activities are utilized to help evaluate the data in quickly and with special populations. For example, a new smartphone tool called V-safe uses text messaging and surveys to check in with COVID-19 vaccine recipients after vaccination. Learn more about COVID-19 vaccine safety .",
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
