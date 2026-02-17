import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/styles/text_styles.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Favorurite",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 27),

            
              const FavoriteItem(
                title: "Sprite Can",
                image: "assets/image/pngfuel 12.png",
              ),
              const Divider(),

              const FavoriteItem(
                title: "Diet Coke",
                image: "assets/image/pngfuel 11.png",
              ),
              const Divider(),

              const FavoriteItem(
                title: "Apple & Grape Juice",
                image: "assets/image/pngfuel 11.png",
              ),
              const Divider(),

              const FavoriteItem(
                title: "Coca Cola Can",
                image: "assets/image/pngfuel 13.png",
              ),
              const Divider(),

              const FavoriteItem(
                title: "Sprite Can",
                image: "assets/image/pngfuel 14.png",
              ),

              const Spacer(),

              /// 🔥 button
              SizedBox(
                height: 61,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolor.primary,
                    foregroundColor: Appcolor.scaffoldBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Text(
                    "Add All To Cart",
                    style: TextStyles.subtittle.copyWith(
                      color: Appcolor.scaffoldBackground,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class FavoriteItem extends StatelessWidget {
  final String title;
  final String image;

  const FavoriteItem({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 28,
            height: 50,
          ),
          const SizedBox(width: 30),

          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyles.button.copyWith(
                  color: Appcolor.textPrimary,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                "325ml, Price",
                style: TextStyles.small.copyWith(
                  color: Appcolor.textMobileNumber,
                ),
              ),
            ],
          ),

          const Spacer(),

          Text(
            "\$1.50",
            style: TextStyles.button.copyWith(
              color: Appcolor.textPrimary,
            ),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
