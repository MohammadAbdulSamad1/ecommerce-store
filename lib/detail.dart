import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop/done.dart';

class detail extends StatelessWidget {
  final Name;
  final Price;
  final images;
  const detail(
      {super.key, required this.Name, required this.Price, this.images});

  @override
  Widget build(BuildContext context) {
    List size = [
      '34',
      '35',
      '38',
      '39',
    ];
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
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
                Text(
                  '$Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
          ),
          Container(
            width: 450,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey.shade300)),
            child: Column(
              children: [
                Text(
                  '$Price ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade900),
                ),
                Image.asset(
                  images,
                  width: 300,
                  height: 300,
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'SIZE',
                    style: TextStyle(color: Colors.red),
                  )),
                ),
              ),
              Container(
                // color: Colors.amber,
                width: 200,
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0.5,
                                  blurRadius: 5,
                                )
                              ]),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('${size[index]}'),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return done();
                    }));
                  },
                  child: Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 205, 21, 21),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'BUY NEW',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
