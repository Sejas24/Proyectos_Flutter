import 'package:fl_components/screens/screens.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Naruto'),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('Nt'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://www.ecured.cu/images/f/fe/%212db33839a490847e8d061fe07bb1e99b.jpg'),
      )),
    );
  }
}
