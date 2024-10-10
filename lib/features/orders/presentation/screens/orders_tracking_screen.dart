import 'package:baked_bliss/features/orders/presentation/widget/order_delivery_status.dart';
import 'package:baked_bliss/features/orders/presentation/widget/order_traking_map_view.dart';
import 'package:flutter/material.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: OrderTrakingMapView(),
          ),
          OrderDeliveryStatus(),
        ],
      ),
    );
  }
}
