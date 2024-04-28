import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicDesignScreen extends StatelessWidget {
    const BasicDesignScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return const Scaffold(
            body: Column(
              children: [
                Image(
                    image: AssetImage("assets/landscape.jpg"),
                ),
                  _Title(),
               _Options()
              ],
            ),
        );
    }
}

class _Options extends StatelessWidget {
  const _Options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 40),
      child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          _ColumBoton(icon: Icons.call,titulo: "CALL",),
          _ColumBoton(icon: Icons.map,titulo: "MAP",),
          _ColumBoton(icon: Icons.share,titulo: "SHARE",),
        ],
      ),
    );
  }
}

class _ColumBoton extends StatelessWidget {
  final IconData icon;
  final String titulo;
  const _ColumBoton({
    super.key, required this.icon, required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: Colors.blueAccent,),
        Text(titulo,style: TextStyle(color:Colors.blueAccent ),)
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child:  Row(
          children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("Lago del pais maravilla",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                      Text("lago pequeño",style: TextStyle(color: Colors.grey),),
                  ],
              ),
Expanded(child: Container()),
              Icon(Icons.star,color: Colors.deepOrange,),
              SizedBox(width: 5,),
              Text("41"),
          ],
      ),
    );
  }
}
