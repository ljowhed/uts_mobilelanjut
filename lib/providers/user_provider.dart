import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  String _nama = '';
  String _nim = '';
  DateTime _tanggalLahir = DateTime.now();

  String get nama => _nama;
  String get nim => _nim;
  DateTime get tanggalLahir => _tanggalLahir;

  void setUser(String nama, String nim, DateTime tanggalLahir) {
    _nama = nama;
    _nim = nim;
    _tanggalLahir = tanggalLahir;
    notifyListeners();
  }
}
