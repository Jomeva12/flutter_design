import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 30),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "clasify transaction",
              style: TextStyle(
                fontWeight: FontWeight.w800,fontSize: 22,
                color: Colors.white
              ),
            ),
            Text("Clasify thistransaction into your category en s  s sasad dasd  das as ",style: TextStyle(
                color: Colors.white,fontSize: 17
            ),),
          ],
        ),
      ),
    );
  }
}
