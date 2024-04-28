import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
    const ScrollDesign({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return  Scaffold(
            body: PageView(
                scrollDirection: Axis.vertical,
                children: [
                    Page1(),
                    Page1(),
                    Page1(),
                ],
            )

        );
    }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
        children:[
            BackGound(),
            MainContent()
        ]
    );
  }
}



class BackGound extends StatelessWidget {
  const BackGound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage("assets/scroll-1.png"))
    );
  }
}
class MainContent extends StatelessWidget {
    const MainContent({
        super.key,
    });

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            bottom: false,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  SizedBox(height: 80,),
                  Text("11°", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize:40),),
                  Text("Miércoles", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize:40),),
                  Expanded(child: Container()),
                  Icon(Icons.keyboard_arrow_down,size: 60, color: Colors.white,),
                  SizedBox(height: 30,),
              ],
          ),
        );
    }
}