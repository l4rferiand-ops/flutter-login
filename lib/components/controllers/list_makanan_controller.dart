import 'package:get/get.dart';
import 'package:kalkulator/models/makanan_model.dart';

class ListMakananController extends GetxController {
  final dataMakanan = <MakananModel>[
    MakananModel(
      nama: 'Nasi Goreng',
      deskripsi:
          'Nasi goreng gurih dengan bumbu rempah yang lezat dan menggugah selera.',
      rating: 4.8,
      harga: 18000,
      gambar: 'lib/images/nasi_goreng.jpg',
      review:
          'Bumbunya enak, gurih, dan porsinya mengenyangkan.',
    ),
    MakananModel(
      nama: 'Ayam Bakar',
      deskripsi:
          'Ayam bakar dengan bumbu manis gurih yang meresap hingga ke dalam daging.',
      rating: 4.7,
      harga: 25000,
      gambar: 'lib/images/ayam_bakar.jpg',
      review:
          'Dagingnya empuk dan bumbunya terasa sampai ke dalam.',
    ),
    MakananModel(
      nama: 'Sate Ayam',
      deskripsi:
          'Potongan ayam bakar yang disajikan dengan saus kacang khas.',
      rating: 4.9,
      harga: 20000,
      gambar: 'lib/images/sate_ayam.jpg',
      review:
          'Saus kacangnya mantap dan dagingnya empuk.',
    ),
    MakananModel(
      nama: 'Mie Goreng',
      deskripsi:
          'Mie goreng berbumbu dengan rasa gurih dan pelengkap yang nikmat.',
      rating: 4.6,
      harga: 15000,
      gambar: 'lib/images/mie_goreng.jpg',
      review:
          'Rasanya gurih dan cocok untuk makan siang.',
    ),
  ].obs;
}