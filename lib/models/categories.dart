part of 'models.dart';

class Categories extends Equatable {
  final int id;
  final String title;
  final String imagePath;
  final List<Foods> foods;
  Categories({this.id,this.title, this.imagePath, this.foods});

  @override
  // TODO: implement props
  List<Object> get props => [id,title,imagePath,foods];
}

List<Categories> categoriesListData = <Categories>[
  Categories(
    title: "Vegetable",
    imagePath:
        "https://ecs7.tokopedia.net/img/cache/700/product-1/2020/4/22/100523169/100523169_1768aeac-8fce-4b5a-9e07-ee89c19a5574_626_626.jpg",

  ),
  Categories(
    title: "Fruits",
    imagePath:
    "https://cdn0-production-images-kly.akamaized.net/28wyxqkItdQdGoccrK5930PcezM=/640x640/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1753506/original/051033400_1509172164-Buah-Naga-Beda-Warna-Beda-Manfaat.jpg",

  ),
  Categories(
    title: "Meats",
    imagePath:
    "https://cdn-2.tstatic.net/jateng/foto/bank/images/ilustrasi-daging-segar_20180515_120341.jpg",

  ),
  Categories(
    title: "Seasoning",
    imagePath:
    "https://1.bp.blogspot.com/-c9XASx5iIhE/TfF_fQJbfOI/AAAAAAAAE4Y/5MQlrrbtgS4/s1600/IMG_6978.JPG",

  ),


];
