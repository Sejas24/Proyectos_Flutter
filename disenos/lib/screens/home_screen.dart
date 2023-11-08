import 'package:flutter/material.dart';
import 'package:disenos/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //*Background
          BackgroundScreen(),
          //*Home Body
          HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulos
          PageTitle(),

          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}
