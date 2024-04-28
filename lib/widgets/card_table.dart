import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _singeCard(color: Colors.amberAccent,icon: Icons.bus_alert,title: "Bus",),
          _singeCard(color: Colors.blueAccent,icon: Icons.calendar_month,title: "calendar",),
        ]),
        TableRow(children: [
          _singeCard(color: Colors.purple,icon: Icons.android,title: "android",),
          _singeCard(color: Colors.lightGreen,icon: Icons.color_lens,title: "verde",),
        ]),
      ],
    );
  }
}

class _singeCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  const _singeCard({
    super.key, required this.color, required this.icon,required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20));
    return Container(
      margin: EdgeInsets.all(15),
      height: 150,
      decoration: boxDecoration,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: this.color,
              child: Icon(
                this.icon,
                size: 40,
                color: Colors.white,
              ),
            radius: 30,
          ),
          SizedBox(height: 10,),
          Text(this.title, style: TextStyle(color: this.color, fontSize: 20))
        ],
      ),
    );
  }
}
