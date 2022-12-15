class ScheduleFundraisingModel {
  ScheduleFundraisingModel({
    this.id,
    this.jadwalDurasi,
    this.jadwalMulai,
    this.jadwalAkhir,
    this.targetDana,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  final int? id;
  final String? jadwalDurasi;
  final DateTime? jadwalMulai;
  final DateTime? jadwalAkhir;
  final int? targetDana;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? createdBy;
  final int? updatedBy;

  static ScheduleFundraisingModel fromJson(Map<String?, dynamic> json) => ScheduleFundraisingModel(
        id: json["id"] == null ? null : json["id"],
        jadwalDurasi: json["jadwal_durasi"] == null ? null : json["jadwal_durasi"],
        jadwalMulai: json["jadwal_mulai"] == null ? null : DateTime.parse(json["jadwal_mulai"]),
        jadwalAkhir: json["jadwal_akhir"] == null ? null : DateTime.parse(json["jadwal_akhir"]),
        targetDana: json["target_dana"] == null ? null : json["target_dana"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"] == null ? null : json["created_by"],
        updatedBy: json["updated_by"] == null ? null : json["updated_by"],
      );
}
