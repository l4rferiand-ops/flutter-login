import 'package:flutter/material.dart';
import 'package:kalkulator/models/makanan_model.dart';

class DeskripsiMakananPage extends StatelessWidget {
  final MakananModel makanan;

  const DeskripsiMakananPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F0),
      appBar: AppBar(
        title: const Text('Detail Makanan'),
        backgroundColor: const Color(0xFFE53935),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              makanan.gambar,
              width: double.infinity,
              height: 270,
              fit: BoxFit.cover,
              errorBuilder: (ctx, err, stack) {
                return Container(
                  width: double.infinity,
                  height: 270,
                  color: const Color(0xFFFFCA28).withValues(alpha: 0.3),
                  child: const Icon(Icons.restaurant, size: 90, color: Color(0xFFFF8A00)),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.nama,
                    style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        'Rating: ',
                        style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${makanan.rating.toStringAsFixed(1)} / 5.0',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Rp ${makanan.harga.toString().replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => '.')}',
                    style: const TextStyle(
                      color: Color(0xFFE53935),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    'Deskripsi Makanan',
                    style: TextStyle(
                      color: Color(0xFFFF8A00),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    makanan.deskripsi,
                    style: const TextStyle(fontSize: 15, height: 1.7),
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    'Review',
                    style: TextStyle(
                      color: Color(0xFF43A047),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFF43A047).withValues(alpha: 0.4)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.account_circle, color: Color(0xFF43A047), size: 35),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            makanan.review,
                            style: const TextStyle(fontSize: 14, height: 1.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Kembali'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF43A047),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}