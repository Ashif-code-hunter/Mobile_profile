import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'icongenerate.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'email@example.com',
      query:
          'subject=App Feedback&body=App Version 3.23', //add subject and body here
    );
    var url = params.toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ),
        ],
        title: const Center(
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),

          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 70),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //profile pic
                  CircularStepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 60,
                      stepSize: 15,
                      selectedColor: Color(0xffED6F2C),
                      unselectedColor: Color(0xfffafafa),
                      padding: 0,
                      width: 140,
                      height: 140,
                      selectedStepSize: 6,
                      unselectedStepSize: 6,
                      roundedCap: (_, __) => true,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("images/Ashif.jpg"),
                      )),
                  const VerticalDivider(
                    width: 80,
                  ),
                  SizedBox(
                    height: 90,
                    width: 3,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      //profession
                      Text(
                        "Flutter Dev",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '1 year exp',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "Ashif",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  //fname
                  //lname
                  Padding(
                    padding: EdgeInsets.only(top: 60, left: 16),
                    child: Text(
                      "M A",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 2,
                thickness: 2,
                indent: 35,
                endIndent: 25,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: <Widget>[
                    //icon
                    IconGenerate(image: "images/gmail.png",),
                    const SizedBox(
                      width: 30,
                    ),
                    const InkWell(
                      child: Text(
                        'Ashif8520@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                    //email id
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 15.0),
                child: Row(
                  children:  <Widget>[
                    //icon
                    //github id
                    IconGenerate(image: "images/linkedin.png",),
                    const SizedBox(
                      width: 30,
                    ),
                    const InkWell(
                      child: Text(
                        'linkedin.com/in/ashifma',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0, top: 30),
                child: Row(
                  children:  <Widget>[
                    //icon
                    //linked in id
                    IconGenerate(image: "images/github.png",),
                    const SizedBox(
                      width: 30,
                    ),
                    const InkWell(
                      child: Text(
                        'github.com/Ashif-coder',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0, top: 30),
                child: Row(
                  children:  <Widget>[
                    //icon
                    //linked in id
                    IconGenerate(image: "images/phone.png",),
                    const SizedBox(
                      width: 30,
                    ),
                    const InkWell(
                      child: Text(
                        '+91 9876543211',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

