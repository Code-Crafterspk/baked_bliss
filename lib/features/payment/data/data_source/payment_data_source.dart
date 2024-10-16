import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart';

abstract interface class PaymentDataSource {
  Future<void> makePayment({required String userId, required double amount});
}

class PaymentDataSourceImpl implements PaymentDataSource {
  final Stripe _stripe;
  final Client _client;

  PaymentDataSourceImpl(this._stripe, this._client);
  @override
  Future<void> makePayment(
      {required String userId, required double amount}) async {
    try {
      final paymentSecret = await _createPaymentIntent(amount: amount);
      if (paymentSecret == null) {
        throw ServerException(
          message: 'Failed to create payment intent',
          errorCode: '500',
        );
      }

      await _stripe.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              paymentIntentClientSecret: paymentSecret));
      await _stripe.presentPaymentSheet();
      await _stripe.confirmPaymentSheetPayment();
    } on ServerException {
      rethrow;
    } catch (e) {
      throw Exception('Failed to make payment');
    }
  }

  Future<String?> _createPaymentIntent({required double amount}) async {
    try {
      return 'paymentIntent';
    } catch (e) {
      throw Exception('Failed to create payment intent');
    }
  }
}
