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
  final List<String> bahanBahan; 

  MealModel({
    required this.id,
    required this.nama,
    required this.kategori,
    required this.foto,
    required this.instruksi,
    required this.bahanBahan, 
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    
    List<String> listBahan = [];
    for (int i = 1; i <= 20; i++) {
      String? ingredient = json['strIngredient$i'];
      String? measure = json['strMeasure$i'];

      if (ingredient != null && ingredient.trim().isNotEmpty) {
        String item = ingredient.trim();
        if (measure != null && measure.trim().isNotEmpty) {
          item = "${measure.trim()} $item";
        }
        listBahan.add(item);
      }
    }

    return MealModel(
      id: json['idMeal'] ?? '',
      nama: json['strMeal'] ?? '',
      kategori: json['strCategory'] ?? '',
      foto: json['strMealThumb'] ?? '',
      instruksi: json['strInstructions'] ?? '',
      bahanBahan: listBahan, 
    );
  }
}