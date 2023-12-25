import 'package:equatable/equatable.dart';

class MetaEntity extends Equatable {
  final int? total;
  final int? count;
  final int? perPage;
  final int? currentPage;
  final int? totalPages;
  final int? from;
  final int? lastPage;
  final String? path;
  final int? to;

  const MetaEntity({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.from,
    this.lastPage,
    this.path,
    this.to,
  });

  @override
  List<Object?> get props => [
        total,
        count,
        perPage,
        currentPage,
        totalPages,
        from,
        lastPage,
        path,
        to
      ];
}
