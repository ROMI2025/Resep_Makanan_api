class CategoryModel {
  final String nama;
  final String foto;

  CategoryModel({required this.nama, required this.foto});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      nama: json['strCategory'] ?? '',
      foto: json['strCategoryThumb'] ?? '',
    );
  }
}

class MealModel {
  final String id;
  final String nama;
  final String kategori;
  final String foto;
  final String instruksi;

  MealModel({
    required this.id,
    required this.nama,
    required this.kategori,
    required this.foto,
    required this.instruksi,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      id: json['idMeal'] ?? '',
      nama: json['strMeal'] ?? '',
      kategori: json['strCategory'] ?? '',
      foto: json['strMealThumb'] ?? '',
      instruksi: json['strInstructions'] ?? '',
    );
  }
}