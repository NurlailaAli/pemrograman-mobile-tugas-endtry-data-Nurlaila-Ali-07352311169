import 'dart:io';

void main() {
  List<String> dosenList = [
    "Sekar Zenara Alvernia",
    "Akalla Jivara",
    "Cellos D. Vaemorin",
    "Givan Badzlin",
    "Reivanya Falisha"
  ];

  List<Map<String, String>> mahasiswaList = [
    {
      "nama": "Aurakaell Ganendra Reghantara",
      "npm": "M001",
      "prodi": "Informatika",
      "angkatan": "2023",
      "kelas": "IF-1",
      "pa": dosenList[0]
    },
    {
      "nama": "Aleesya Calla Izzana",
      "npm": "M002",
      "prodi": "Farmasi",
      "angkatan": "2023",
      "kelas": "FAR-1",
      "pa": dosenList[1]
    },
    {
      "nama": "Dhakza Abhinanda",
      "npm": "M003",
      "prodi": "Elektro",
      "angkatan": "2023",
      "kelas": "EL-1",
      "pa": dosenList[2]
    },
    {
      "nama": "Gavin Revanza Wijaya",
      "npm": "M004",
      "prodi": "Bisnis",
      "angkatan": "2023",
      "kelas": "BS-1",
      "pa": dosenList[3]
    },
    {
      "nama": "Kaivan Sagara Devanka",
      "npm": "M005",
      "prodi": "Dokter",
      "angkatan": "2023",
      "kelas": "DK-1",
      "pa": dosenList[4]
    },
  ];

  print("=== Data Mahasiswa & Dosen PA ===");
  print("Jumlah data mahasiswa: ${mahasiswaList.length}");

  stdout.write("\nMasukkan nama Mahasiswa yang ingin dicari: ");
  String keyword = stdin.readLineSync()!.toLowerCase();

  var hasil = mahasiswaList.where((m) =>
      m["nama"]!.toLowerCase().contains(keyword) ||
      m["npm"]!.toLowerCase().contains(keyword) ||
      m["prodi"]!.toLowerCase().contains(keyword));

  if (hasil.isEmpty) {
    print(" Data mahasiswa tidak ditemukan.");
  } else {
    print("\n=== Hasil Pencarian ===");
    for (var m in hasil) {
      print("Nama     : ${m['nama']}");
      print("NPM      : ${m['npm']}");
      print("Prodi    : ${m['prodi']}");
      print("Angkatan : ${m['angkatan']}");
      print("Kelas    : ${m['kelas']}");
      print("PA       : ${m['pa']}");
      print("-" * 30);
    }
  }
}