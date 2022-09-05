import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:musicapp/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Center(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.5)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  '${homeController.greeting()}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .31,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Fluttertoast.showToast(
                                          msg: "recent Pressed");
                                    },
                                    icon: Icon(
                                      Icons.playlist_add_check_circle,
                                      color: Colors.black,
                                    )),
                                IconButton(
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                        msg: "setting Pressed");
                                  },
                                  icon: Icon(
                                    Icons.settings_applications_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 8.0,
                                      mainAxisSpacing: 8.0,
                                      mainAxisExtent: 55),
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
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 455,
                              child: ListView.builder(
                                itemCount: 25,
                                itemBuilder: ((context, index) {
                                  return Card(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          "assets/images/background.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      title: Text("song Name",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      subtitle: Text("extra details",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      trailing: InkWell(
                                        child: Icon(
                                          Icons.more_vert_outlined,
                                        ),
                                        onTap: () {
                                          Fluttertoast.showToast(
                                              msg: "more option");
                                        },
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
