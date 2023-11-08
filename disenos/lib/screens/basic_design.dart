import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Image
        Image(image: AssetImage('assets/landscape.jpg')),

        //Titulo
        Title(),
        //Button Section
        ButtonSection(),
        //descripcion
        TextWidget(),
      ],
    ));
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Text(
          'dolor id eiusmod ex tempor labore labore enim elit magna Lorem sint. In est amet irure laboris et occaecat ullamco et. Consequat minim nisi excepteur enim ullamco ex in laboris anim in. Ut aute ipsum dolore mollit consequat nulla laborum nulla ipsum veniam. Nisi nulla commodo minim fugiat aliqua quis est magna commodo enim deserunt laboris. Consequat id proident dolore Lorem elit cillum est eu. Ex sint qui in magna veniam sunt'),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 120, vertical: 40),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Okandersteg, Swwitzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.room_outlined, text: 'CALL'),
          CustomButton(icon: Icons.share, text: 'CALL'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 30,
        ),
        Text('$text', style: TextStyle(color: Colors.lightBlue)),
      ],
    );
  }
}
