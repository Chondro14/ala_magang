part of 'widgets.dart';

class CategoriesFoodCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function onPressed;
  CategoriesFoodCard({this.imagePath, this.title,this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            width:100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(imagePath), fit: BoxFit.cover)),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black.withOpacity(0.3),
            ),
            child: Center(
              child: Text(title,style: openSans20Bold700.copyWith(fontSize: 14,color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
