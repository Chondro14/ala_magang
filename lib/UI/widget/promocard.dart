part of 'widgets.dart';

class PromoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function onPressed;
  PromoCard({this.imagePath, this.title,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: defaultMargin),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width-48,
          height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: NetworkImage(imagePath),fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child: SizedBox(
                  child: Text(
                    title,
                    style: openSans12Bold400.copyWith(color: Colors.white,fontSize: 20,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
