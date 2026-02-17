import 'package:flutter/material.dart';
// 👈 اعمل import للشاشة الجديدة

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        "title": "Fresh Fruits\n& Vegetables",
        "color": const Color(0xffE8F5E9),
        "image":
            "https://www.light-dark.net/wp-content/uploads/2023/07/%D8%BA%D8%B3%D9%84-%D8%A7%D9%84%D8%AE%D8%B6%D8%B1%D9%88%D8%A7%D8%AA-%D9%88%D8%A7%D9%84%D9%81%D8%A7%D9%83%D9%874.png",
      },
      {
        "title": "Cooking Oil\n& Ghee",
        "color": const Color(0xffFFF3E0),
        "image":
            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTU9rjvf6b3gJlOCO4sD6dYiXD4TAhlAn_T_3nPsMEEvNAJFXS-",
      },
      {
        "title": "Meat & Fish",
        "color": const Color(0xffFCE4EC),
        "image":
            "https://mangish.net/file/2023/02/%D9%88%D8%B5%D9%81%D8%A7%D8%AA-%D8%A7%D9%83%D9%84-%D9%84%D8%A8%D9%86%D8%A7%D8%A1-%D8%A7%D9%84%D8%B9%D8%B6%D9%84%D8%A7%D8%AA.png",
      },
      {
        "title": "Bakery & Snacks",
        "color": const Color(0xffEDE7F6),
        "image":
            "https://images.jdmagicbox.com/quickquotes/images_main/pammi-black-forest-cake-2-pound-2222104536-o0xn50bw.jpg",
      },
      {
        "title": "Dairy & Eggs",
        "color": const Color(0xffFFFDE7),
        "image": "https://www.mobtada.com/uploads/images/2016/12/159087.jpg",
      },
      {
        "title": "Beverages",
        "color": const Color(0xffE3F2FD),
        "image":
            "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSOVY06_amsZzCep2wJKGl-XmoELQ0KGOHL29zehld5ONmnZN5z",
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "Find Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  hintText: "Search Store",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(18),
                        onTap: () {
                          
                          if (item["title"] == "Beverages") {
                            //navigator
                            
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: item["color"],
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                item["image"],
                                height: 70,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(Icons.image_not_supported);
                                },
                              ),
                              const SizedBox(height: 10),
                              Text(
                                item["title"],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
