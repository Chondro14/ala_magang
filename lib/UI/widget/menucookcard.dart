part of 'widgets.dart';

class MenuCookCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function onPressed;
  MenuCookCard({this.title, this.imagePath, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0,vertical: 8),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.48,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(3, 5),
                    spreadRadius: 2)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.48,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                  image: DecorationImage(
                      image: NetworkImage(imagePath), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                child: Text(title, style: openSans20Bold700.copyWith(fontSize: 14)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:28.0),
                child: RaisedButton(onPressed: onPressed, color: "FFB61E".toColor(),disabledColor: "FFB61E".toColor(),
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child: Text('Baca',style: openSans12Bold400.copyWith(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
