void main() {
  String matkul1 = "Pemrograman Mobile";
  int sks1 = 3;
  double nilai1 = 85;

  String matkul2 = "Komputer Vision";
  int sks2 = 3;
  double nilai2 = 80;

  String matkul3 = "Keamanan Siber";
  int sks3 = 2;
  double nilai3 = 90;

  int totalSks = sks1 + sks2 + sks3;

  double ipk = (
    (nilai1 * sks1) +
    (nilai2 * sks2) +
    (nilai3 * sks3)
  ) / totalSks;

  print("=== KALKULATOR IPK ===");
  print("$matkul1: $nilai1 ($sks1 SKS)");
  print("$matkul2: $nilai2 ($sks2 SKS)");
  print("$matkul3: $nilai3 ($sks3 SKS)");
  print("----------------------");
  print("Total SKS: $totalSks");
  print("IPK: ${ipk.toStringAsFixed(2)}");
}