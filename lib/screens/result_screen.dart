import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../providers/user_provider.dart'; // ganti sesuai path kamu
import 'result_screen.dart';  // Pastikan ini ada

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    final tanggalLahir = user.tanggalLahir;
    final zodiak = getZodiak(tanggalLahir);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hasil Zodiak Kamu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nama: ${user.nama}", style: TextStyle(fontSize: 18)),
              Text("NIM: ${user.nim}", style: TextStyle(fontSize: 18)),
              Text("Tanggal Lahir: ${DateFormat('d MMMM yyyy').format(
                  tanggalLahir)}", style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              Text("🌟 ${zodiak['nama']}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("Tanggal: ${zodiak['tanggal']}"),
              Text("Lambang: ${zodiak['lambang']}"),
              Text("Kategori: ${zodiak['kategori']}"),
              const SizedBox(height: 16),
              Text("Sifat Positif:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(zodiak['positif']),
              const SizedBox(height: 12),
              Text("Sifat Negatif:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(zodiak['negatif']),
              const SizedBox(height: 12),
              Text("Keterangan Tambahan:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(zodiak['keterangan']),
            ],
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> getZodiak(DateTime date) {
    final int day = date.day;
    final int month = date.month;

    if ((month == 3 && day >= 21) || (month == 4 && day <= 20)) {
      return {
        'nama': 'Aries',
        'tanggal': '21 Maret – 20 April',
        'lambang': 'Biri-biri jantan',
        'kategori': 'Kardinal (Aktif)',
        'positif': 'Berani, percaya diri, penuh inisiatif, mengutamakan tindakan, memiliki daya juang tinggi, dan memperjuangkan nasib.',
        'negatif': 'Terlalu banyak berpikir, kasar, sombong, agresif, hasil kerja kurang rapi, mudah memicu konflik.',
        'keterangan': 'Aries termasuk kategori kardinal, yaitu aktif. Baik untuk memulai proyek baru. Kardinal lainnya: Capricorn, Cancer, Libra.',
      };
    } else if ((month == 4 && day >= 21) || (month == 5 && day <= 20)) {
      return {
        'nama': 'Taurus',
        'tanggal': '21 April – 20 Mei',
        'lambang': 'Lembu jantan',
        'kategori': 'Tetap (Stabil)',
        'positif': 'Mengutamakan kekayaan, loyalitas, daya rasa, tabah, gemar berpelesiran, dan spiritual tinggi.',
        'negatif': 'Terlalu kebendaan, keras hati, terlalu mengekang, suka menurut rasa hati, dan buntu pikiran.',
        'keterangan': 'Taurus termasuk kategori tetap. Stabil dan penuh ketabahan. Tetap lainnya: Leo, Aquarius, Scorpio.',
      };
    } else if ((month == 5 && day >= 21) || (month == 6 && day <= 20)) {
      return {
        'nama': 'Gemini',
        'tanggal': '21 Mei – 20 Juni',
        'lambang': 'Anak kembar',
        'kategori': 'Bervariasi (Berubah)',
        'positif': 'Cerdas, ramah, cepat tanggap, ingin tahu, komunikatif, dan banyak ide.',
        'negatif': 'Gelisah, suka berpindah-pindah, tidak konsisten, suka membual, dan sulit dipahami.',
        'keterangan': 'Gemini termasuk kategori berubah, fleksibel dan mudah beradaptasi. Berubah lainnya: Virgo, Sagitarius, Pisces.',
      };
    } else if ((month == 6 && day >= 21) || (month == 7 && day <= 20)) {
      return {
        'nama': 'Cancer',
        'tanggal': '21 Juni – 20 Juli',
        'lambang': 'Kepiting',
        'kategori': 'Kardinal (Aktif)',
        'positif': 'Emosional, penyayang, intuitif, protektif, dan imajinatif.',
        'negatif': 'Mudah tersinggung, murung, terlalu sensitif, dan pesimis.',
        'keterangan': 'Cancer termasuk kategori kardinal. Cocok memulai sesuatu yang membutuhkan perasaan. Kardinal lainnya: Aries, Capricorn, Libra.',
      };
    } else if ((month == 7 && day >= 21) || (month == 8 && day <= 20)) {
      return {
        'nama': 'Leo',
        'tanggal': '21 Juli – 20 Agustus',
        'lambang': 'Singa',
        'kategori': 'Tetap (Stabil)',
        'positif': 'Percaya diri, murah hati, hangat, berjiwa pemimpin, dan bersemangat.',
        'negatif': 'Dominan, keras kepala, arogan, dan haus pujian.',
        'keterangan': 'Leo termasuk kategori tetap. Teguh dalam prinsip dan sikap. Tetap lainnya: Taurus, Scorpio, Aquarius.',
      };
    } else if ((month == 8 && day >= 21) || (month == 9 && day <= 20)) {
      return {
        'nama': 'Virgo',
        'tanggal': '21 Agustus – 20 September',
        'lambang': 'Perawan',
        'kategori': 'Bervariasi (Berubah)',
        'positif': 'Perfeksionis, analitis, praktis, pekerja keras, dan teliti.',
        'negatif': 'Terlalu kritis, cerewet, khawatiran, dan kaku.',
        'keterangan': 'Virgo termasuk kategori berubah. Cenderung fleksibel dan adaptif. Berubah lainnya: Gemini, Sagitarius, Pisces.',
      };
    } else if ((month == 9 && day >= 21) || (month == 10 && day <= 20)) {
      return {
        'nama': 'Libra',
        'tanggal': '21 September – 20 Oktober',
        'lambang': 'Timbangan',
        'kategori': 'Kardinal (Aktif)',
        'positif': 'Diplomatis, adil, sosial, ramah, dan artistik.',
        'negatif': 'Ragu-ragu, mudah dipengaruhi, suka menghindari konflik, dan tidak tegas.',
        'keterangan': 'Libra termasuk kategori kardinal. Pandai memulai relasi sosial. Kardinal lainnya: Aries, Cancer, Capricorn.',
      };
    } else if ((month == 10 && day >= 21) || (month == 11 && day <= 20)) {
      return {
        'nama': 'Scorpio',
        'tanggal': '21 Oktober – 20 November',
        'lambang': 'Kalajengking',
        'kategori': 'Tetap (Stabil)',
        'positif': 'Penuh gairah, setia, fokus, berkemauan keras, dan berani.',
        'negatif': 'Cemburuan, posesif, suka mendendam, dan rahasia.',
        'keterangan': 'Scorpio termasuk kategori tetap. Emosinya kuat dan sulit digoyahkan. Tetap lainnya: Taurus, Leo, Aquarius.',
      };
    } else if ((month == 11 && day >= 21) || (month == 12 && day <= 20)) {
      return {
        'nama': 'Sagitarius',
        'tanggal': '21 November – 20 Desember',
        'lambang': 'Pemanah',
        'kategori': 'Bervariasi (Berubah)',
        'positif': 'Optimis, berjiwa petualang, jujur, filosofis, dan mandiri.',
        'negatif': 'Tidak sabar, terlalu jujur, gegabah, dan suka lari dari tanggung jawab.',
        'keterangan': 'Sagitarius termasuk kategori berubah. Penuh semangat eksplorasi. Berubah lainnya: Gemini, Virgo, Pisces.',
      };
    } else if ((month == 12 && day >= 21) || (month == 1 && day <= 19)) {
      return {
        'nama': 'Capricorn',
        'tanggal': '21 Desember – 19 Januari',
        'lambang': 'Kambing',
        'kategori': 'Kardinal (Aktif)',
        'positif': 'Mengutamakan kesuksesan, loyalitas, konsentrasi, bijaksana, dan bertanggung jawab.',
        'negatif': 'Pesimis, merasa terbebani, takut hambatan, kurang simpati, terlalu khawatir.',
        'keterangan': 'Capricorn termasuk kategori kardinal. Baik untuk memulai proyek baru. Kardinal lainnya: Aries, Cancer, Libra.',
      };
    } else if ((month == 1 && day >= 20) || (month == 2 && day <= 18)) {
      return {
        'nama': 'Aquarius',
        'tanggal': '20 Januari – 18 Februari',
        'lambang': 'Penimba air',
        'kategori': 'Tetap (Stabil)',
        'positif': 'Inovatif, orisinal, humanis, bebas, dan cerdas.',
        'negatif': 'Eksentrik, memberontak, keras kepala, dan tidak realistis.',
        'keterangan': 'Aquarius termasuk kategori tetap. Pemikir bebas dan independen. Tetap lainnya: Taurus, Leo, Scorpio.',
      };
    } else if ((month == 2 && day >= 19) || (month == 3 && day <= 20)) {
      return {
        'nama': 'Pisces',
        'tanggal': '19 Februari – 20 Maret',
        'lambang': 'Ikan',
        'kategori': 'Bervariasi (Berubah)',
        'positif': 'Penuh kasih, intuitif, imajinatif, welas asih, dan peka.',
        'negatif': 'Terlalu sensitif, pelupa, mudah dipengaruhi, dan suka kabur dari kenyataan.',
        'keterangan': 'Pisces termasuk kategori berubah. Cenderung perasa dan adaptif. Berubah lainnya: Gemini, Virgo, Sagitarius.',
      };
    }

    return {
      'nama': 'Tidak Diketahui',
      'tanggal': '-',
      'lambang': '-',
      'kategori': '-',
      'positif': '-',
      'negatif': '-',
      'keterangan': 'Tanggal tidak sesuai rentang zodiak.',
    };
  }
}
