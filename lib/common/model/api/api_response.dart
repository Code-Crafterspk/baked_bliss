import 'package:equatable/equatable.dart';

class ApiResponse<T> extends Equatable {
  final T data;
  final Pagination? pagination;

  const ApiResponse({
    required this.data,
    required this.pagination,
  });

  @override
  List<Object?> get props => [data, pagination];
}

class Pagination extends Equatable {
  final int total;
  final int offset;
  final int limit;

  const Pagination({
    required this.total,
    required this.offset,
    required this.limit,
  });

  @override
  List<Object?> get props => [total, offset, limit];

  factory Pagination.fromJson(Map<String, dynamic> map) {
    return Pagination(
      total: map['total'] as int,
      offset: map['offset'] as int,
      limit: map['limit'] as int,
    );
  }
}
