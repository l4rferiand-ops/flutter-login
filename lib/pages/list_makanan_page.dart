import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalkulator/components/controllers/list_makanan_controller.dart';
import 'package:kalkulator/pages/deskripsi_makanan_page.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final ctrl = Get.put(ListMakananController()); // sengaja disingkat 'ctrl' biar kayak kodingan buru-buru

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F0),
      appBar: AppBar(
        title: const Text('Daftar Makanan', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFE53935),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: ctrl.dataMakanan.length,
        itemBuilder: (context, i) {
          var mkn = ctrl.dataMakanan[i]; // pake variabel 'mkn' pendek

          return Card(
            color: Colors.white,
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Get.to(() => DeskripsiMakananPage(makanan: mkn));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        mkn.gambar,
                        width: 110,
                        height: 115,
                        fit: BoxFit.cover,
                        errorBuilder: (ctx, err, stack) {
                          return Container(
                            width: 110,
                            height: 115,
                            color: const Color(0xFFFFCA28).withValues(alpha: 0.3),
                            child: const Icon(Icons.restaurant, size: 40, color: Color(0xFFFF8A00)),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mkn.nama,
                            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            mkn.deskripsi,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey.shade700, fontSize: 12, height: 1.4),
                          ),
                          const SizedBox(height: 8),
                          // Bagian bintang diganti tulisan Rating biasa
                          Row(
                            children: [
                              const Text(
                                'Rating: ',
                                style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                mkn.rating.toStringAsFixed(1),
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Text(
                            'Rp ${mkn.harga.toString().replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => '.')}',
                            style: const TextStyle(
                              color: Color(0xFFE53935),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Row(
                            children: [
                              Text(
                                'Lihat detail',
                                style: TextStyle(
                                  color: Color(0xFF43A047),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_forward, color: Color(0xFF43A047), size: 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}