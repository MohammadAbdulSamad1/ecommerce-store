import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    List images = [
      'assets/images/61jvlHp22vL.jpg',
      'assets/images/61owdlDd7wL._AC_SL1500_.jpg',
      'assets/images/81yrjV0n7vL._AC_SY550_.jpg',
      'assets/images/CS2349S.jpg',
      'assets/images/lms420.jpg',
      'assets/images/Mens_Corporate_Shirt_Long_Sleeve_Float_Navy.jpg'
    ];
    List name = [
      'T-shire1',
      'T-shire2',
      'T-shire3',
      'T-shire4',
      'T-shire5',
      'T-shire6',
    ];
    List prices = [
      '\$250',
      '\$350',
      '\$450',
      '\$500',
      '\$850',
      '\$200',
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
                        child: Container(child: Icon(Icons.arrow_back_ios))),
                  ),
                ),
                Text(
                  'T-shirt shop',
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [favButton()],
                                ),
                                Image.asset(
                                  '${images[index]}',
                                  height: 100,
                                ),
                                Text(
                                  '${name[index]}',
                                ),
                                Text(
                                  '${prices[index]}',
                                  style: TextStyle(
                                      color: Colors.orange.shade900,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return detail(
                                  Name: name[index],
                                  Price: prices[index],
                                  images: images[index],
                                );
                              }));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 170,
                              height: 40,
                              child: Center(
                                  child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class favButton extends StatefulWidget {
  const favButton({
    super.key,
  });

  @override
  State<favButton> createState() => _FavIconsState();
}

bool isfav = false;

class _FavIconsState extends State<favButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, top: 5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isfav = !isfav;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey.withOpacity(0.4)),
              borderRadius: BorderRadius.circular(30)),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 15,
            child: Icon(
              Icons.favorite,
              color: isfav ? Colors.red : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
