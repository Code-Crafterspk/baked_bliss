import 'package:baked_bliss/features/orders/presentation/widget/delivery_person_detail.dart';
import 'package:baked_bliss/features/orders/presentation/widget/order_products_detail.dart';
import 'package:baked_bliss/features/orders/presentation/widget/order_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderDeliveryStatus extends StatelessWidget {
  const OrderDeliveryStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DeliveryPersonDetails(),
        OrderProgress(),
        OrderProductDetails(),
      ],
    );
  }
}
