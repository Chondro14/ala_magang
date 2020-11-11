part of 'models.dart';

class Promo extends Equatable{
  final int id;
  final String title;
  final String description;
  final String picturePath;
  final DateTime dateTime;
  Promo(
      {this.title, this.description, this.picturePath, this.dateTime, this.id});

  @override

  List<Object> get props => [id,title,description,picturePath,dateTime];

}

List<Promo> promoListData = [
  Promo(
      id: 1,
      title: "Festival Sayur discount 50%",
      description:
          "Festival Sayur ini bentuk dari kesadaran kita untuk membeli sayur\n karena kita membutuhkan asupan nutrisi yang lebih dan serat yang tinggi \n untuk itu kami memberikan discount sebesar 50% sebagai penghargaan kami",
      picturePath:
          "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/ilustrasi-sayuran.jpg",
      dateTime: DateTime(2000, 11, 10)),
  Promo(
      id: 2,
      title: "Festival Ikan discount 50%",
      description:
      "Festival Ikan ini bentuk dari kesadaran kita untuk membeli Ikan\n karena kita membutuhkan asupan nutrisi yang lebih dan protein yang cukup \n untuk itu kami memberikan discount sebesar 50% sebagai penghargaan kami",
      picturePath:
      "https://awsimages.detik.net.id/community/media/visual/2018/10/30/7f45b0b1-a986-40d8-8587-f540a7567bcf.jpeg?w=700&q=90",
      dateTime: DateTime(2000, 11, 10))
];
