part of 'models.dart';

enum BlogStatus { Top, Health, Diet, Kids, Culinery, TrendingTopic }

class Blog extends Equatable {
  final List<BlogStatus> blogStatus;
  final int id;
  final String titles;
  final String media;
  final String images;
  final String description;
  Blog(
      {this.id,
      this.blogStatus,
      this.media,
      this.description,
      this.images,
      this.titles});

  @override

  List<Object> get props => [ titles, media, images, description];
}

List<Blog> blogListData =[
  Blog(
      id: 1,
      titles: "Harga Rempah-Rempah ini diperkirakan naik bulan depan",
      media: "kompas.com",
      images:
          "https://awsimages.detik.net.id/community/media/visual/2017/05/22/1c3afb4a-af64-48c9-9539-3dbe07d6fec7.jpg?w=700&q=90",
      blogStatus: [BlogStatus.Top],
      description:
          "Berkhasiat Meningkatkan daya tahan tubuh ,permintaan rempah rempah semakin tinggi.   Harga Rempah-rempah seperti jahe,temulawak pun mulai naik di pasar."),
  Blog(
    id: 2,
      titles:
          "Menjelang Idul Adha ,badan POM mulai melakukan inspeksi ke para penjual",
      media: "kumparan.com",
      images: "https://i.ytimg.com/vi/kfU03bcOm4s/hqdefault.jpg",
      blogStatus: [BlogStatus.Top],
      description:
          "Dinas Pertanian Provinsi Gorontalo memeriksa puluhan sapi yang akan dijual untuk hewan kurban di kompleks Pasar Dungingi Kota Gorontalo. Pemeriksaan ini untuk menjamin kesehatan hewan kurban dari berbagai penyakit, terutama antraks."),
  Blog(
    id: 3,
      titles:
      "7 Kuliner Solo langganan Presiden Jokowi,sudah pernah coba ?",
      media: "idntimes.com",
      images: "https://cdn1-production-images-kly.akamaized.net/qGy2d1C94e05mpti5LyFKwz8UMM=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1279630/original/056271100_1467375246-030923600_1423894977-usai_pertemuan_jokowi_dan_petinggi_KIH_sarapan_soto_gading2.jpg",
      blogStatus: [BlogStatus.Top,BlogStatus.Culinery],
      description:
      "Sarapan di Solo ya soto Triwindu. Kuliner satu ini sudah melegenda. Pasalnya, sudah sejak 1939 sudah dijajakan dan kini dikelola oleh generasi ketiga, Muwarni"+
"Menurut Muwarni, soto Triwindu, disebut begitu karena dulunya dijual di dekat pasar Triwindu – sebelumnya dijual secara dipikul berpindah-pindah. Soto ini merupakan kegemaran Presiden Jokowi, dan menjadi sarapan wajib bila ke Solo."),

];
