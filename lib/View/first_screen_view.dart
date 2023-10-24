import 'package:flutter/material.dart';
import 'package:my_portfolio/data/app_data.dart';
import 'package:my_portfolio/Utils/app_string.dart';
import 'package:my_portfolio/widget/progress_bar.dart';
import 'package:my_portfolio/widget/skillsContainer.dart';

class FirstScreenView extends StatelessWidget {
  final VoidCallback onNextPage;
  const FirstScreenView({super.key, required this.onNextPage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Container(
          padding: EdgeInsets.all(size.height * 0.01),
          decoration:const BoxDecoration(
            // color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: size.height * 0.12,
            backgroundImage: const AssetImage("asset/Uday_Palecha.jpg"),
            backgroundColor: Colors.grey,
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(AppData.modelData.name,
          style:const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "Gloock"
          ),
        ),
        // UN-HIDING the FIRST skills container
        SizedBox(
          height: size.height * 0.03,
        ),
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          color: Colors.grey.shade300,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: size.width * 0.05,
              runSpacing: size.width * 0.05,
              children: List.generate(
                AppData.modelData.skillAndProgress.length,
                (index) => SkillsContainer(
                  SkillsTitle: AppData.modelData.skillAndProgress[index].name
                ),
              ),
            ),
          ),
        ),
        // HIDING 2nd skills bar
        // SizedBox(
        //   height: size.height * 0.03,
        // ),
        // Card(
        //   elevation: 10,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20)
        //   ),
        //   color: Colors.grey.shade300,
        //   child: Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: Column(
        //       //Add a heading
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const Text(AppString.ProjectsScreen,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //             color: Colors.black,
        //             fontFamily: "Skranji"
        //           ),
        //         ),
        //         List.generate(
        //           AppData.modelData.skillAndProgress.length,
        //               (index) => ProgressBar(
        //               progresstitle: AppData.modelData.skillAndProgress[index].name,
        //               progresss: AppData.modelData.skillAndProgress[index].progress
        //           ),
        //         ),
        //       ]
        //     ),
        //   ),
        // ),
        Expanded(child: Container()),
        IconButton(
          onPressed:onNextPage ,
          icon:const Icon(Icons.arrow_downward, size: 30,),
          color: Colors.black,
        ),
        SizedBox(
          height: size.height * 0.01,
        )
      ],
    );
  }
}