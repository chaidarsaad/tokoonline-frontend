class CategoryModel {
  int id;
  String nama;

  CategoryModel({
    required this.id,
    required this.nama,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['name'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
    };
  }
}
