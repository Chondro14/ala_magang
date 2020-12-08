part of 'models.dart';

class Shop extends Equatable {
  final int id;
  final String nameShop;
  final List<Foods> foods;
  final double rate;
  final double distance;
  final String locationShop;
  final String images;
  final List<ReviewClass> reviewClass;
  Shop(
      {this.rate,
        this.reviewClass,
      this.nameShop,
      this.id,
      this.distance,
      this.foods,
      this.locationShop,this.images});

  @override

  List<Object> get props => [id, nameShop, foods, rate, distance, locationShop];
}

List<Shop> shopListData = [
  Shop(
      id: 1,
      reviewClass: userReviews,
      nameShop: "Makishitoo ",
      images: "https://cdn-2.tstatic.net/bangka/foto/bank/images/pedagang-sayur-keliling.jpg",
      foods: [Foods(
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

        )],
      rate: 4.2,
      distance: 0.10,
      locationShop: "Jln Rembuksari no 10"),
  Shop(
      id: 2,
      reviewClass: userReviews,
      nameShop: "Sumiati shop ",images: "https://ecs7.tokopedia.net/img/cache/700/product-1/2017/10/27/23949793/23949793_2a608f58-cde0-4b7b-b08a-e08694754815_550_400.jpg",
      foods: [Foods(
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

        )],
      rate: 4.1,
      distance: 0.10,
      locationShop: "Jln Ikan tombro no 02"),
  Shop(
      id: 3,
      images: "https://i.mentorbizlist.com/img/biznes/066/ideya-dlya-malogo-biznesa-ovoshnaya-lavka-ili-magazin-2.jpg",
      nameShop: "Kampung sayur",
      reviewClass: userReviews,
      rate: 4.7,
      distance: 1.56,
      locationShop: "Jln Oro-oro dowo no 1",foods: [Foods(
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

    )])
];
