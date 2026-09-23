class Mahasiswa {
  String nim;
  String nama;
  String prodi;
  String? email;

  Mahasiswa({
    required this.nim,
    required this.nama,
    required this.prodi,
    this.email,
  });

  String get identitas {
    return "$nim - $nama";
  }

  String kirimEmail() {
    if (email == null) {
      return "Email belum tersedia";
    }

    return "Email dikirim ke $email";
  }
}

void main() {
  Mahasiswa mahasiswa1 = Mahasiswa(
    nim: "202463121004",
    nama: "I Made Oka Wali Putra",
    prodi: "Teknik Komputer",
    email: "oka@gmail.com",
  );

  Mahasiswa mahasiswa2 = Mahasiswa(
    nim: "202463121005",
    nama: "ferry",
    prodi: "Teknik Komputer",
    email: "ferry@gmail.com",
  );

  Mahasiswa mahasiswa3 = Mahasiswa(
    nim: "202463121006",
    nama: "Darco",
    prodi: "Teknik Komputer",
  );

  print("=== DATA MAHASISWA ===");

  print("\nMahasiswa 1");
  print("Identitas: ${mahasiswa1.identitas}");
  print("Prodi: ${mahasiswa1.prodi}");
  print(mahasiswa1.kirimEmail());

  print("\nMahasiswa 2");
  print("Identitas: ${mahasiswa2.identitas}");
  print("Prodi: ${mahasiswa2.prodi}");
  print(mahasiswa2.kirimEmail());

  print("\nMahasiswa 3");
  print("Identitas: ${mahasiswa3.identitas}");
  print("Prodi: ${mahasiswa3.prodi}");
  print(mahasiswa3.kirimEmail());
}