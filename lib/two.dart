import 'dart:ui';

import 'package:bookstore/donate.dart';
import 'package:bookstore/recieve.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Container(
                height: 300,
                width: 300,
                // MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/food.jpeg"),
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  MaterialButton(
                    minWidth: 300,
                    height: 60,
                    color: Color.fromARGB(255, 240, 155, 80),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Donate()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "ADD BOOKS",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: MaterialButton(
                      minWidth: 300,
                      height: 60,
                      color: Color.fromARGB(255, 240, 155, 80),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => recieve()));
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "MY BOOKCART",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Everyone is a reader. Some just haven't found their favorite book yet",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: "Alkatra",
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
