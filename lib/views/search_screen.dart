import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isList = true;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Container(
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.white)),
                labelText: "Search here... 🔍"),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SafeArea(
                      child: isList == false
                          ? ListView.builder(
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
                                        style: TextStyle(color: Colors.white)),
                                    subtitle: Text("extra details",
                                        style: TextStyle(color: Colors.white)),
                                    trailing: InkWell(
                                      child: Icon(
                                        Icons.remove_circle_outline_sharp,
                                      ),
                                      onTap: () {
                                        Fluttertoast.showToast(
                                            msg: "remove option pressed");
                                      },
                                    ),
                                  ),
                                );
                              }),
                            )
                          : Center(
                              child: Text(
                                "No search found",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
