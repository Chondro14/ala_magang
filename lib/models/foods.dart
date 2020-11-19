part of 'models.dart';

enum CategoryFoods { Vegetable, Fruits, Meats, Seasoning }

class Foods extends Equatable {
  final int id;
  final String nameFoods;
  final int discount;
  final int price;
  final String description;
  final String nameShop;
  final List<String> contains;
  final int quantity;
  final int weight;
  final List<CategoryFoods> typeFoods;
  final double rate;
  final String pictureList;


  Foods(
      {this.contains,
      this.description,
      this.discount,
      this.id,
      this.nameFoods,
      this.nameShop,
      this.price,
      this.quantity,
      this.weight,
      this.typeFoods,
      this.pictureList,
      this.rate});
  @override

  List<Object> get props => [
        contains,
        description,
        discount,
        id,
        nameShop,
        nameFoods,
        price,
        pictureList,
        quantity,
        weight,
        typeFoods,
        rate
      ];
}

List<Foods> foodsListData = [
  Foods(
      id: 1,
      nameFoods: "Bawang Merah",
      nameShop: "Mbah Rojan",
      description:
          "Bawang merah pelengkap untuk bumbu masakan,dan bisa dikategorikan sayur \n selain yang enak sekali untuk dijadikan bawang goreng",
      discount: 15,
      quantity: 1,
      rate: 4.5,
    pictureList: "https://tap-assets-prod.dexecure.net/wp-content/uploads/sites/24/2019/02/manfaat-bawang-putih-5.jpg",
    weight: 250,typeFoods: [CategoryFoods.Seasoning,CategoryFoods.Vegetable],price: 7000

  ),
  Foods(
      id: 2,
      nameFoods: "Daging Sapi Wagyu",
      nameShop: "Kimishita shop",
      description:
      "Danging Sapi Wagyu ialah daging super premium  \n rasa yang udah awalnya sudah enak apalagi dengan pengolahan yang terbaik",
      discount: 5,
      quantity: 1,
      rate: 5.0,
      pictureList: "https://ecs7.tokopedia.net/img/cache/700/product-1/2019/1/10/5191956/5191956_ce13ac48-4408-4ab4-8f0f-ff4e9bef5ef3_700_700.jpg",
      weight: 250,typeFoods: [CategoryFoods.Meats],price: 4000000

  ),
  Foods(
      id: 3,
      nameFoods: "Daging Ayam horn",
      nameShop: "Kimishita shop",
      description:
      "Danging ayam horn ialah daging ayam yang pada umumnya  \n banyak olahan apalagi dengan pengolahan yang terbaik",
      discount: 10,
      quantity: 1,
      rate: 5.0,
      pictureList: "https://ayamkita.com/wp-content/uploads/2017/06/Pengertian-Karkas-Ayam.jpg",
      weight: 250,typeFoods: [CategoryFoods.Meats],price: 10000

  ),
  Foods(
      id: 4,
      nameFoods: "Kangkung",
      nameShop: "Bagio Munir ",
      description:
      "Sayur Kangung bisa dikatakan sayur favorit orang Indonesia  \n banyak olahan apalagi dengan pengolahan yang terbaik",
      discount: 10,
      quantity: 1,
      rate: 5.0,
      pictureList: "https://ayamkita.com/wp-content/uploads/2017/06/Pengertian-Karkas-Ayam.jpg",
      weight: 250,typeFoods: [CategoryFoods.Vegetable],price: 4000

  ),
  Foods(
      id: 5,
      nameFoods: "Brokoli Putih",
      nameShop: "Mastairat shop",
      description:
      "Brokoli ialah Sayuran yang sangat enak   \n banyak olahan apalagi dengan pengolahan yang terbaik",
      discount: 10,
      quantity: 1,
      rate: 5.0,
      pictureList: "https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/7/18/18c51724-37ae-4328-9698-978d28ba2aa3.jpg",
      weight: 250,typeFoods: [CategoryFoods.Vegetable],price: 11000

  )
];
