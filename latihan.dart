// =====================================================
// LATIHAN DART MANDIRI - WEEK 02
// Nama: I Made Oka Wali Putra
// =====================================================


// =====================================================
// 1. KONVERSI SUHU
// =====================================================

// Function untuk mengubah Celsius ke Fahrenheit
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Function untuk mengubah Celsius ke Kelvin
double celsiusToKelvin(double celsius) {
  return celsius + 273.15;
}


// =====================================================
// 2. CLASS PRODUK
// =====================================================

class Produk {
  String nama;
  double harga;
  double? diskon; // Diskon bersifat opsional

  Produk(this.nama, this.harga, {this.diskon});

  // Function untuk menghitung harga akhir
  double hargaAkhir() {
    if (diskon != null) {
      return harga - (harga * diskon! / 100);
    }

    return harga;
  }
}


// =====================================================
// 3. VAR, FINAL, CONST, DAN LATE
// =====================================================

void contohVariabel() {

  // VAR
  // Digunakan karena nilai variabel masih bisa berubah.
  var namaMahasiswa = "I Made Oka Wali Putra";
  namaMahasiswa = "Oka Wali";

  print("Nama: $namaMahasiswa");


  // FINAL
  // Digunakan karena nilainya hanya ditentukan satu kali
  // dan tidak akan diubah lagi selama program berjalan.
  final tahun = DateTime.now().year;

  print("Tahun sekarang: $tahun");


  // CONST
  // Digunakan untuk nilai yang sudah pasti dan konstan
  // sejak program dikompilasi.
  const kampus = "Universitas Warmadewa";

  print("Kampus: $kampus");


  // LATE
  // Digunakan ketika variabel akan diberi nilai nanti,
  // tetapi kita sudah memastikan variabel tersebut
  // akan diisi sebelum digunakan.
  late String mataKuliah;

  mataKuliah = "Pemrograman Dart";

  print("Mata Kuliah: $mataKuliah");
}


// =====================================================
// MAIN PROGRAM
// =====================================================

void main() {

  print("========================================");
  print("       LATIHAN DART MANDIRI WEEK 02");
  print("========================================");


  // ---------------------------------------------------
  // 1. Konversi Suhu
  // ---------------------------------------------------

  double suhuCelsius = 30;

  double fahrenheit = celsiusToFahrenheit(suhuCelsius);
  double kelvin = celsiusToKelvin(suhuCelsius);

  print("\n--- KONVERSI SUHU ---");
  print("Celsius    : $suhuCelsius °C");
  print("Fahrenheit : $fahrenheit °F");
  print("Kelvin     : $kelvin K");


  // ---------------------------------------------------
  // 2. Class Produk
  // ---------------------------------------------------

  print("\n--- DATA PRODUK ---");

  Produk produk1 = Produk(
    "Laptop Gaming",
    15000000,
    diskon: 10,
  );

  Produk produk2 = Produk(
    "Mouse Gaming",
    500000,
  );

  print("Produk 1 : ${produk1.nama}");
  print("Harga    : Rp${produk1.harga}");
  print("Diskon   : ${produk1.diskon ?? 0}%");
  print("Harga Akhir : Rp${produk1.hargaAkhir()}");

  print("");

  print("Produk 2 : ${produk2.nama}");
  print("Harga    : Rp${produk2.harga}");
  print("Diskon   : ${produk2.diskon ?? 0}%");
  print("Harga Akhir : Rp${produk2.hargaAkhir()}");


  // ---------------------------------------------------
  // 3. Var, Final, Const, Late
  // ---------------------------------------------------

  print("\n--- VAR, FINAL, CONST, DAN LATE ---");

  contohVariabel();


  print("\n========================================");
  print("           PROGRAM SELESAI");
  print("========================================");
}