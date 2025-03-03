class ClubBaseModel {
  final String id;

  ClubBaseModel({required this.id});

  factory ClubBaseModel.fromJson(Map<String, dynamic> json) {
    return ClubBaseModel(id: json['id']);
  }

  Map<String, dynamic> toJson() => {'id': id};
}
