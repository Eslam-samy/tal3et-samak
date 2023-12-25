import 'package:talet_samak/features/home/home_screen/demain/entities/meta_entity.dart';

class Meta extends MetaEntity {
  const Meta(
      {super.total,
      super.count,
      super.perPage,
      super.currentPage,
      super.totalPages,
      super.from,
      super.lastPage,
      super.path,
      super.to});

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      total: json["total"],
      count: json["count"],
      perPage: json["per_page"],
      currentPage: json["current_page"],
      totalPages: json["total_pages"],
      from: json["from"],
      lastPage: json["last_page"],
      path: json["path"],
      to: json["to"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["total"] = total;
    _data["count"] = count;
    _data["per_page"] = perPage;
    _data["current_page"] = currentPage;
    _data["total_pages"] = totalPages;
    _data["from"] = from;
    _data["last_page"] = lastPage;
    _data["path"] = path;
    _data["to"] = to;
    return _data;
  }
}
