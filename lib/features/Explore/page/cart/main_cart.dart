import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/function/navigation.dart';
import 'package:green_nart_app/core/styles/text_styles.dart';
import 'package:green_nart_app/features/Explore/page/cart/order_accepted.dart';

class MainCart extends StatelessWidget {
  const MainCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              Center(
                child: Text(
                  "My Cart",
                  style: TextStyles.body.copyWith(
                    color: Appcolor.textPrimary,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              newMethod(
                image:
                    "assets/image/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (2).png",
                title: "Bell Pepper Red",
                subTitle: "1Kg",
                price: "\$4.99",
              ),
              const Divider(),
              const SizedBox(height: 27),

              newMethod(
                image: "assets/image/pngfuel 16.png",
                title: "Egg Chicken Red",
                subTitle: "4pcs, Price",
                price: "\$1.99",
              ),
              const Divider(),
              const SizedBox(height: 27),

              newMethod(
                image:
                    "assets/image/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (3).png",
                title: "Organic Bananas",
                subTitle: "12kg, Price",
                price: "\$3.00",
              ),
              const Divider(),
              const SizedBox(height: 27),

              newMethod(
                image:
                    "assets/image/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (2).png",
                title: "Ginger",
                subTitle: "250gm, Price",
                price: "\$2.99",
              ),

              const SizedBox(height: 22),

              /// Checkout Button
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              /// Header
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Checkout",
                                    style: TextStyles.body.copyWith(
                                      fontSize: 20,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon: const Icon(Icons.close),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 20),

                              checkoutRow("Delivery", "Select Method"),
                              checkoutRow("Payment", ""),
                              checkoutRow("Promo Code", "Pick discount"),
                              checkoutRow("Total Cost", "\$13.97"),

                              const SizedBox(height: 20),

                              SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    pushReplacment(context, OrderAccepted());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Appcolor.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    "Place Order",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolor.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Go to Checkout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Cart Item
  Row newMethod({
    required String image,
    required String title,
    required String subTitle,
    required String price,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, height: 70),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.close, color: Colors.grey),
                ],
              ),
              const SizedBox(height: 4),
              Text(subTitle, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Icon(Icons.remove, color: Colors.grey),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Icon(Icons.add, color: Colors.green),
                      ),
                    ],
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Checkout Rows
  Widget checkoutRow(String title, String value) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: Colors.grey)),
            Row(
              children: [
                Text(value),
                const SizedBox(width: 5),
                const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 15),
      ],
    );
  }
}
