// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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
  final int page;
  final int limit;

  const Pagination({
    required this.total,
    required this.page,
    required this.limit,
  });

  @override
  List<Object?> get props => [total, page, limit];

  factory Pagination.fromJson(Map<String, dynamic> map) {
    return Pagination(
      total: map['total'] as int,
      page: map['page'] as int,
      limit: map['limit'] as int,
    );
  }
}
