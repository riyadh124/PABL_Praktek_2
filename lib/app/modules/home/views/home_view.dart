import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text('Home'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          flexibleSpace: const SafeArea(
            child: Icon(
              Icons.photo_camera,
              size: 75.0,
              color: Colors.white70,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(75.0),
            child: Container(
              color: Colors.lightGreen.shade100,
              height: 75.0,
              width: double.infinity,
              child: const Center(
                child: Text('Bottom'),
              ),
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ContainerWithBoxDecorationWidget(),
                  SizedBox(
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text('Column 1'),
                      Divider(),
                      Text('Column 2'),
                      Divider(),
                      Text('Column 3'),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('Row 1'),
                          Padding(padding: EdgeInsets.all(16)),
                          Text('Row 2'),
                          Padding(padding: EdgeInsets.all(16)),
                          Text('Row 3'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(10.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.lightGreen.shade500,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Center(
          child: RichText(
            text: const TextSpan(
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 24,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.deepPurpleAccent,
                    decorationStyle: TextDecorationStyle.dotted,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal),
                text: 'Flutter World',
                children: <TextSpan>[
                  TextSpan(text: ' for'),
                  TextSpan(
                      text: ' Mobile',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold))
                ]),
          ),
        ),
      ),
    ]);
  }
}
