import 'package:flutter/material.dart';
import 'package:my_portfolio/Utils/app_string.dart';
import 'package:my_portfolio/data/app_data.dart';
import 'package:my_portfolio/widget/contact_screen.dart';


class SecondScreenView extends StatelessWidget {
  final VoidCallback onNextPage;

  const SecondScreenView({super.key ,
  required this.onNextPage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.grey.shade300,
            elevation: 10,
            child: Container(
              margin: EdgeInsets.all(size.height * 0.01),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03,
              vertical: size.height * 0.01,
              ),
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppString.BioScreen,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Skranji"
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    AppData.devBio,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: "Lexend"
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.grey.shade300,
            elevation: 10,
            child: Container(
              margin: EdgeInsets.all(size.height * 0.01),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03,
                  vertical: size.height * 0.01
              ),
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppString.HobbiesScreen,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Skranji"
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(AppData.modelData.hobbies.length,
                              (index) => Text("${index + 1}. ${AppData.modelData.hobbies[index]}",
                            style:const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontFamily: "Lexend"
                            ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.grey.shade300,
            elevation: 10,
            child: Container(
              margin: EdgeInsets.all(size.height * 0.01),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03,
                  vertical: size.height * 0.01
              ),
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppString.ContactScreen,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Skranji"
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
               ContactScreen(
                   title: AppData.modelData.number ,
                   icon: Icons.phone,
               ),
                  ContactScreen(
                      title: AppData.modelData.mail,
                      icon: Icons.email
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed:onNextPage ,
            icon:const Icon(Icons.arrow_upward,
              size: 30,),
            color: Colors.black,
          ),
          SizedBox(
            height: size.height * 0.01,
          )
        ],
      ),
    );
  }
}