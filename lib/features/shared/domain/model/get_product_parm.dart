import 'package:equatable/equatable.dart';

class GetProductParm extends Equatable {
  final String? category;
  final String? productId;
  final String? userId;
  final int? limit;
  final int? page;

  const GetProductParm({
    required this.category,
    required this.productId,
    required this.userId,
    required this.limit,
    required this.page,
  });

  @override
  List<Object?> get props => [
        category,
        productId,
        userId,
        limit,
        page,
      ];
}
