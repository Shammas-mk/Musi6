import 'dart:ui';

import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFavour = false;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.5)),
                    child: SafeArea(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Card(
                                child: Container(
                                    color: Colors.blueGrey,
                                    height: 90,
                                    width: double.infinity,
                                    child: Text("Favourate")),
                              ),
                              SizedBox(height: 30),
                              isFavour == true
                                  ? GridView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 8.0,
                                              mainAxisSpacing: 8.0,
                                              mainAxisExtent: 150),
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          color: Colors.blueGrey,
                                          height: 30,
                                          child: ListTile(
                                            leading: Container(
                                              width: 60,
                                              height: 42,
                                              child: Image.asset(
                                                "assets/images/background.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            title: Text(
                                              "song type",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  : Container(
                                      child: Text("No Favourate lists"),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
