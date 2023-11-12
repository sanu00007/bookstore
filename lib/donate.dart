import 'dart:ui';

import 'package:bookstore/recieve.dart';
import 'package:flutter/material.dart';

class Donate extends StatelessWidget {
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
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 90,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Book name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 65,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Author name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => recieve()));
                      },
                      label: Text('search book'),
                      icon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 247, 133, 51).withAlpha(60),
                    blurRadius: 10,
                    spreadRadius: 10,
                    offset: Offset(0.0, 3.0),
                  ),
                ],
                border: Border.all(
                    color: Color.fromARGB(255, 240, 155, 80), width: 2),
                image: DecorationImage(
                    image: AssetImage("assets/images/search.webp"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
