class DonationCampaignModel {
  DonationCampaignModel({
    this.id,
    this.name,
    this.label,
    this.pathImage,
    this.description,
    this.campaignstartDate,
    this.campaignendDate,
    this.campaignTonase,
    this.campaigncategoryId,
    this.donationtypeId,
    this.state,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
  });

  final int? id;
  final String? name;
  final String? label;
  final String? pathImage;
  final String? description;
  final DateTime? campaignstartDate;
  final DateTime? campaignendDate;
  final int? campaignTonase;
  final int? campaigncategoryId;
  final int? donationtypeId;
  final String? state;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? createdBy;

  static DonationCampaignModel fromJson(Map<String?, dynamic> json) => DonationCampaignModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        label: json["label"] == null ? null : json["label"],
        pathImage: json["path_image"] == null ? null : json["path_image"],
        description: json["description"] == null ? null : json["description"],
        campaignstartDate: json["campaignstart_date"] == null ? null : DateTime.parse(json["campaignstart_date"]),
        campaignendDate: json["campaignend_date"] == null ? null : DateTime.parse(json["campaignend_date"]),
        campaignTonase: json["campaign_tonase"] == null ? null : json["campaign_tonase"],
        campaigncategoryId: json["campaigncategory_id"] == null ? null : json["campaigncategory_id"],
        donationtypeId: json["donationtype_id"] == null ? null : json["donationtype_id"],
        state: json["state"] == null ? null : json["state"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"] == null ? null : json["created_by"],
      );
}
