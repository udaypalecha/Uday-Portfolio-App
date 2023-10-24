import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  final String title;
  final IconData icon;

  const ContactScreen({
    super.key,
  required this.title,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Card(
      color: Colors.grey.shade300,
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: size.width * 0.01,
          vertical: size.height * 0.01,
        ),
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.01,
            ),
             Icon(
              icon,
              size: 28,
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Text(title ,
              style:const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontFamily: "Lexend"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
