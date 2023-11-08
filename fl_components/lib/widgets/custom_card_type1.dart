import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un Titulo'),
            subtitle: Text(
                'Esse ea incididunt culpa labore elit adipisicing mollit esse voluptate. Nisi fugiat laborum enim Lorem dolore non exercitation qui laboris. Eiusmod incididunt duis reprehenderit laboris elit. Aliquip amet nulla id velit dolor irure aliqua cupidatat deserunt velit fugiat sint pariatur. Irure cupidatat sit reprehenderit aute dolore officia qui sit consectetur eu proident deserunt nisi.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('OK'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
