import 'package:flutter/material.dart';

class done extends StatelessWidget {
  const done({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(child: Icon(Icons.arrow_back_ios))),
                ),
              ),
              Image.asset(
                'assets/images/congrats1.jpg',
                width: 100,
                height: 100,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.menu_sharp),
                ),
              )
            ],
          ),
          Image.asset('assets/images/congrats.jpg', width: 500, height: 400),
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
