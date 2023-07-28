import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class UserPaymentSection extends StatefulWidget {
  final double price;

  const UserPaymentSection({
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<UserPaymentSection> {
  Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
    // Initialize Razorpay with your API key here
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Handle payment success here
    print("Payment Successful. Payment ID: ${response.paymentId}");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Handle payment failure here
    print(
        "Payment Error. Code: ${response.code}, Message: ${response.message}");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Handle external wallet selection here
    print("External Wallet Selected: ${response.walletName}");
  }

  void _startPayment() {
    // Amount in paise (e.g., 100 paise = ₹1)
    int amount = (widget.price * 100).toInt(); // Convert to paise

    var options = {
      'key': 'rzp_test_yCwr90gJhLqqXl', // Replace with your actual API key
      'amount': amount,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print("Error while making payment: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Razorpay Payment')),
        body: Center(
          child: ElevatedButton(
            onPressed: _startPayment,
            child: Text('Pay with Razorpay'),
          ),
        ),
      ),
    );
  }
}
