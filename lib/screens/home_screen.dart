import 'package:flutter/material.dart';
import 'package:disenos/widgets/Background.dart';
import 'package:disenos/widgets/page_title.dart';

import '../widgets/card_table.dart';
import '../widgets/custon_botton_navigation.dart';


class HomeScreen extends StatelessWidget {
    const HomeScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return  Scaffold(
            body: Stack(
                children: [
                    Background(),
                    _HomeBody()
                ],
            ),
          bottomNavigationBar: CustomBottonNavigation(),
        );
    }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: [
                //titulos
                PageTitle(),
              CardTable()
            ],
        ),
    );
  }
}
