class Pegawai {
  String? id;
  String nip;
  String nama;
  String tglLahir;
  String noTelpon;
  String email;
  String password;

  Pegawai({
    this.id,
    required this.nip,
    required this.nama,
    required this.tglLahir,
    required this.noTelpon,
    required this.email,
    required this.password,
  });
}
