class GalleryModel {
  int id = 15;
  String url = "url";

  GalleryModel({
    required this.id,
    required this.url,
  });

  GalleryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['name'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
