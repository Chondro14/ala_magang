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
  final bool freeongkir;
  final List<CookFood> menuCook;

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
      this.rate,
      this.freeongkir,
      this.menuCook});
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
        rate,
        freeongkir
      ];
}

class CookFood extends Equatable {
  final List<String> ingridients;
  final List<String> stepCook;
  final String imagesCook;
  final String titleCook;
  final double calori;
  CookFood({this.imagesCook, this.ingridients, this.stepCook, this.titleCook,this.calori});
  @override
  // TODO: implement props
  List<Object> get props => [ingridients, stepCook, imagesCook, titleCook,calori];
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
      pictureList:
          "https://tap-assets-prod.dexecure.net/wp-content/uploads/sites/24/2019/02/manfaat-bawang-putih-5.jpg",
      weight: 250,
      typeFoods: [CategoryFoods.Seasoning, CategoryFoods.Vegetable],
      price: 7000,
      contains: [
        'Kandungan gizi : Nilai gizi per 100 gram',
        'Energi : 72 kkal',
        'Air : 79,80 gram',
        'Karbohidrat : 16,80 gram',
        'Gula Total : 7,87 gram',
        'Serat total : 3,2 gram',
        'Protein : 2,5 gram',
        'Lemak Total : 0,1 gram'
      ],
      freeongkir: false,menuCook: menuListCookBawangMerah),
  Foods(
      id: 2,
      nameFoods: "Daging Sapi Wagyu",
      nameShop: "Kimishita shop",
      description:
          "Danging Sapi Wagyu ialah daging super premium  \n rasa yang udah awalnya sudah enak apalagi dengan pengolahan yang terbaik",
      discount: 5,
      quantity: 1,
      rate: 5.0,
      pictureList:
          "https://ecs7.tokopedia.net/img/cache/700/product-1/2019/1/10/5191956/5191956_ce13ac48-4408-4ab4-8f0f-ff4e9bef5ef3_700_700.jpg",
      weight: 250,
      typeFoods: [CategoryFoods.Meats],
      price: 4000000,
      contains: [],
      freeongkir: false,menuCook: []
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
      pictureList:
          "https://ayamkita.com/wp-content/uploads/2017/06/Pengertian-Karkas-Ayam.jpg",
      weight: 250,
      typeFoods: [CategoryFoods.Meats],
      price: 10000,
      contains: [],
      freeongkir: false,menuCook:  menuListAyam),
  Foods(
      id: 4,
      nameFoods: "Kangkung",
      nameShop: "Bagio Munir ",
      description:
          "Sayur Kangung bisa dikatakan sayur favorit orang Indonesia  \n banyak olahan apalagi dengan pengolahan yang terbaik",
      discount: 10,
      quantity: 1,
      rate: 5.0,
      pictureList:
          "https://ayamkita.com/wp-content/uploads/2017/06/Pengertian-Karkas-Ayam.jpg",
      weight: 250,
      typeFoods: [CategoryFoods.Vegetable],
      price: 4000,
      contains: [],
      freeongkir: true,menuCook:[]),
  Foods(
      id: 5,
      nameFoods: "Brokoli Putih",
      nameShop: "Mastairat shop",
      description:
          "Brokoli ialah Sayuran yang sangat enak   \n banyak olahan apalagi dengan pengolahan yang terbaik",
      discount: 10,
      quantity: 1,
      rate: 5.0,
      pictureList:
          "https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/7/18/18c51724-37ae-4328-9698-978d28ba2aa3.jpg",
      weight: 250,
      typeFoods: [CategoryFoods.Vegetable],
      price: 11000,
      contains: [],
      freeongkir: true,menuCook: [])
];
List<CookFood> menuListCookBawangMerah = [
  CookFood(
      ingridients: [
        "- 1/2 ekor Ayam Broiler,potong jadi 10 bagian",
        "- 1.5 Liter Air",
        "- 100 gram wortel,iris bulat tebal 1 cm",
        "- 100 gram kentang,iris dadu 2 cm",
        "- 150 gram kembang kol,iris per kuntum",
        "- 100 gram daun kol,iris ukuran 3x3 cm",
        "- 3 batang daun bawang,iris 2 cm",
        "- 3 batang daun seledri,ikat simpul",
        "- 100 gram makroni,rendam air panas",
        "Bumbu halus",
        "- 3 butir bawang merah",
        "- 3 siung bawang putih",
        "- 1 sendok makan merica butir",
        "- 2 sendok teh garam",
        "- 1/2 sendok teh gula",
        "1 sachet kaldu ayam"
      ],
      stepCook: [
        "1. Rebus ayam hingga matang, angkat. Saring air rebusan ayam. Tambahkan 500 ml air dan didihkan kembali.",
        "2. Sementara itu, tumis bumbu halus hingga harum. Pindahkan tumisan bumbu ke dalam panci kaldu.",
        "3. Masukkan kentang, wortel dan daun seledri, masak hingga setengah matang.",
        "4.Masukkan kembang kol, daun kol, ayam rebus, masak hingga semua sayuran hampir matang. Lalu masukkan daun bawang dan makaroni. Biarkan sebentar hingga semua bahan matang. Angkat, sajikan hangat."
      ],
      imagesCook:
          "https://keeprecipes.com/sites/keeprecipes/files/imagecache/recipe_large/10-resep_sup_makaroni.jpg",
      titleCook: "Sayur Sop denga Makroni",calori: 75 ),
  CookFood(ingridients: [
    "- 750 gram ikan kakap (kurang lebih), siangi, buang keplanya, cuci bersih",
    "- 2 sdm air jeruk nipis+1/2 sdt garam, untuk melumuri ikan",
    "- 3 sdm minyak untuk menumis",
    "- 1 liter air (kurang lebih) didihkan",
    "- 10 butir bawang merah, iris kasar",
    "- 5 buah cabai merah, belah 2 memanjang, buang bijinya",
    "- 1 ruas ibu jari jahe, iris tipis",
    "- 2 batang serai, iris kasar serong",
    "- 5 buah tomat sayur (hijau), belah 2",
    "- 1 lembar daun kunyit, potong-potong",
    "- 2 batang daun bawang, iris serong kasar",
    "- 5 lembar daun jeruk",
    "- 5 buah belimbing sayur, belah 2",
    "- 3 batang kemangi, petik daunnya",
    "garam secukupnya"
  ], stepCook: [
    "1. Lumuri ikan merata dengan air jeruk nipis dan garam, diamkan selama kurang lebih 30 menit.",
    "2. Sementara itu panaskan minyak, tumis bawang merah, cabai merah , jahe, dan serai hingga layu. Angkat, masukkan ke dalam air yang sedang mendidih (gunakan panci anti lengket), aduk hingga mendidih kembali.",
    "3. Masukkan ikan dan sisa bahan, masak hingga mendidih.",
    "4. Kemudian kecilkan apinya, teruskan memasaknya hingga ikan matang dan kuah tinggal sedikit.",
    "5. Angkat dan sajikan hangat."
  ],imagesCook: "https://phinemo.com/wp-content/uploads/2018/07/kuliner-labuan-bajo.jpg",titleCook: "Resep Sup Ikan Kuah Asam",calori: 	163)
];
List<CookFood> menuListAyam=[CookFood(
    ingridients: [
      "- 1/2 ekor Ayam Broiler,potong jadi 10 bagian",
      "- 1.5 Liter Air",
      "- 100 gram wortel,iris bulat tebal 1 cm",
      "- 100 gram kentang,iris dadu 2 cm",
      "- 150 gram kembang kol,iris per kuntum",
      "- 100 gram daun kol,iris ukuran 3x3 cm",
      "- 3 batang daun bawang,iris 2 cm",
      "- 3 batang daun seledri,ikat simpul",
      "- 100 gram makroni,rendam air panas",
      "Bumbu halus",
      "- 3 butir bawang merah",
      "- 3 siung bawang putih",
      "- 1 sendok makan merica butir",
      "- 2 sendok teh garam",
      "- 1/2 sendok teh gula",
      "1 sachet kaldu ayam"
    ],
    stepCook: [
      "1. Rebus ayam hingga matang, angkat. Saring air rebusan ayam. Tambahkan 500 ml air dan didihkan kembali.",
      "2. Sementara itu, tumis bumbu halus hingga harum. Pindahkan tumisan bumbu ke dalam panci kaldu.",
      "3. Masukkan kentang, wortel dan daun seledri, masak hingga setengah matang.",
      "4.Masukkan kembang kol, daun kol, ayam rebus, masak hingga semua sayuran hampir matang. Lalu masukkan daun bawang dan makaroni. Biarkan sebentar hingga semua bahan matang. Angkat, sajikan hangat."
    ],
    imagesCook:
    "https://keeprecipes.com/sites/keeprecipes/files/imagecache/recipe_large/10-resep_sup_makaroni.jpg",
    titleCook: "Sayur Sop denga Makroni"),];
