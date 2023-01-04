import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List allItems = [
    Container(
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Icon(Icons.book),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Basics",
            style: TextStyle(fontSize: 23),
          ),
          Text("4/s"),
          LinearPercentIndicator(
            percent: 0.5,
            progressColor: Colors.red,
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Icon(Icons.badge_sharp),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Occupations",
            style: TextStyle(fontSize: 23),
          ),
          Text("4/s"),
          LinearPercentIndicator(
            percent: 0.5,
            progressColor: Colors.red,
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Icon(Icons.message),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Conversation",
            style: TextStyle(fontSize: 23),
          ),
          Text("4/s"),
          LinearPercentIndicator(
            percent: 0.5,
            progressColor: Colors.blue,
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 76, 175),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Icon(Icons.location_city),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Places",
            style: TextStyle(fontSize: 23),
          ),
          Text("4/s"),
          LinearPercentIndicator(
            percent: 0.5,
            progressColor: Color.fromARGB(255, 54, 244, 92),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back,
                          size: 34,
                          color: Colors.white,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Course",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.threed_rotation,
                            size: 34,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Spanish",
                        style: TextStyle(fontSize: 34, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Begineer"),
                              Icon(Icons.arrow_downward_rounded)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      CircularPercentIndicator(
                        center: Column(
                          children: [
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "43",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                            ),
                            Text(
                              "coder",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        radius: 40,
                        lineWidth: 8,
                        progressColor: Colors.white,
                        percent: 0.6,
                      ),
                    ],
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              Positioned(
                top: 190,
                left: 30,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      child: Row(
                        children: [
                          Icon(
                            Icons.diamond,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.diamond,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "2 milestones",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: allItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          final items = allItems[index];
                          return Card(
                            elevation: 20,
                            child: items,
                          );
                        })
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
