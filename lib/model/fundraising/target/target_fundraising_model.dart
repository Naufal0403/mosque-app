class TargetFundraisingModel {
  TargetFundraisingModel({
    this.id,
    this.campaign,
    this.donatur,
    this.targetNominal,
    this.tipeDonasi,
    this.jadwalMulai,
    this.jadwalAkhir,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  final int? id;
  final int? campaign;
  final String? donatur;
  final String? targetNominal;
  final String? tipeDonasi;
  final DateTime? jadwalMulai;
  final DateTime? jadwalAkhir;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? createdBy;
  final int? updatedBy;

  static TargetFundraisingModel fromJson(Map<String?, dynamic> json) => TargetFundraisingModel(
        id: json["id"] == null ? null : json["id"],
        campaign: json["campaign"] == null ? null : json["campaign"],
        donatur: json["donatur"] == null ? null : json["donatur"],
        targetNominal: json["target_nominal"] == null ? null : json["target_nominal"],
        tipeDonasi: json["tipe_donasi"] == null ? null : json["tipe_donasi"],
        jadwalMulai: json["jadwal_mulai"] == null ? null : DateTime.parse(json["jadwal_mulai"]),
        jadwalAkhir: json["jadwal_akhir"] == null ? null : DateTime.parse(json["jadwal_akhir"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"] == null ? null : json["created_by"],
        updatedBy: json["updated_by"] == null ? null : json["updated_by"],
      );
}
