import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  final String iconImagePath;
  final String titleTitle;
  final String titleSubTitle;
  const Lists({super.key, required this.iconImagePath, required this.titleTitle, required this.titleSubTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(12)),
                child: Image.asset(iconImagePath),
              ),
              SizedBox(
                width: 20,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(titleSubTitle, style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
