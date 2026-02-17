import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, size: 30),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        children: [
                          Text(
                            "Sayed Abdul-Aziz",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.edit, size: 18, color: Appcolor.primary),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        "sayed@gmail.com",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(),

              const AccountItem(
                icon: Icons.shopping_bag_outlined,
                title: "Orders",
              ),
              const AccountItem(
                icon: Icons.badge_outlined,
                title: "My Details",
              ),
              const AccountItem(
                icon: Icons.location_on_outlined,
                title: "Delivery Address",
              ),
              const AccountItem(
                icon: Icons.credit_card,
                title: "Payment Methods",
              ),
              const AccountItem(
                icon: Icons.confirmation_num_outlined,
                title: "Promo Cord",
              ),
              const AccountItem(
                icon: Icons.notifications_none,
                title: "Notifications",
              ),
              const AccountItem(icon: Icons.help_outline, title: "Help"),
              const AccountItem(icon: Icons.info_outline, title: "About"),

              const Spacer(),

              Container(
                height: 60,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Center(
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Appcolor.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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

class AccountItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const AccountItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.black87),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: const Icon(Icons.chevron_right),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
