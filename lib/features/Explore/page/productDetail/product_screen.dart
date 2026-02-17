import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/styles/text_styles.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.share_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTM65oOyhGcKqrUZ3kd1W_QUQx3apNbVOg4RqMtE66OtjlvMFsT",
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  /// Title + Heart
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Naturel Red Apple",
                        style: TextStyles.headline.copyWith(fontSize: 18),
                      ),
                      const Icon(Icons.favorite_border),
                    ],
                  ),

                  const SizedBox(height: 6),

                  
                  Row(
                    children: const [
                      Text("1kg", style: TextStyle(color: Colors.grey)),
                    ],
                  ),

                  const SizedBox(height: 20),

                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          buildCounter(Icons.remove, Colors.grey),
                          const SizedBox(width: 12),
                          buildCountBox(),
                          const SizedBox(width: 12),
                          buildCounter(Icons.add, Colors.green),
                        ],
                      ),
                      const Text(
                        "\$4.99",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),
                  const Divider(),

                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Product Detail",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthy and varied diet.",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                  const SizedBox(height: 20),
                  const Divider(),

                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Nutritions",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text("100gr"),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                    ],
                  ),

                  const Divider(),

                  /// Review
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Review",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  /// Button
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appcolor.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Add To Cart",
                        style: TextStyles.body.copyWith(
                          color: Appcolor.scaffoldBackground,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Counter Button
  static Widget buildCounter(IconData icon, Color color) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Icon(icon, color: color),
    );
  }

  /// Count Box
  static Widget buildCountBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Text(
        "1",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
