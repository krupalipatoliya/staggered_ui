import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = [
    'assests/1.png',
    'assests/2.jpg',
    'assests/dog1.jpg',
    'assests/dog2.jpg',
    'assests/2.jpg',
    'assests/2.jpg',
    'assests/download.jpg'
    'assests/3.jpg'
    // 'assests/download(2).jpg'
    // 'assests/download(3).jpg'
    // 'assests/download(4).jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stagged View"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                children: image
                    .map(
                      (e) => Image(
                        image: AssetImage(e),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
