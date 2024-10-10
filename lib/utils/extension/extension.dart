import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:flutter/material.dart';

extension OrderStatusExtension on OrderStatus {
  Color get color {
    switch (this) {
      case OrderStatus.delivered:
        return AppColors.delivered;
      case OrderStatus.cancelled:
        return AppColors.cancelled;
      case OrderStatus.pending:
        return AppColors.pending;
      case OrderStatus.confirmed:
        return AppColors.confirmed;
      case OrderStatus.rejected:
        return AppColors.rejected;
    }
  }
}

extension SnackBarColor on SnackBarType {
  Color get color {
    switch (this) {
      case SnackBarType.success:
        return Colors.green;
      case SnackBarType.error:
        return Colors.red;
      case SnackBarType.warning:
        return Colors.orange;
    }
  }
}
