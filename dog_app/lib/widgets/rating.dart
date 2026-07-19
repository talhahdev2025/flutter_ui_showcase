import 'package:dog_app/core/exports.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this._rating});
  final double _rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: <Widget>[
        for (int i = 1; i <= 5; i++)
          if (i <= _rating)
            Icon(Icons.star_rounded, color: Colors.amber)
          else
            Icon(Icons.star_border_rounded),
      ],
    );
  }
}
