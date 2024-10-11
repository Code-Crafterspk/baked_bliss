import 'package:equatable/equatable.dart';

class GetProductParm extends Equatable {
  final String? category;
  final String? productId;
  final String? userId;
  final int? limit;
  final int? offset;

  const GetProductParm({
    required this.category,
    required this.productId,
    required this.userId,
    required this.limit,
    required this.offset,
  });

  @override
  List<Object?> get props => [
        category,
        productId,
        userId,
        limit,
        offset,
      ];
}
