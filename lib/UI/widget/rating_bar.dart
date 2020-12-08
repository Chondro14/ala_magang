part of'widgets.dart';

class RatingBar extends StatelessWidget{
  final double rating;
  RatingBar({this.rating});
  @override
  Widget build(BuildContext context) {
    int numberOfStars = rating.round();
    return Row(
      children: List<Widget>.generate(
          5,
              (index) => Icon(
            (index < numberOfStars)
                ? MdiIcons.star
                : MdiIcons.starOutline,
            size: 16,
            color: "FFB61E".toColor(),
          )) +
          [
            SizedBox(
              width: 4,
            ),
            Text(
              rating.toString(),
              style: openSans12Bold400.copyWith(fontSize: 14),
            )
          ],
    );
  }
}