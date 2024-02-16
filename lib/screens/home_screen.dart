import 'package:flutter/material.dart';
import 'package:wizmo_test/app_colors.dart';
import 'package:wizmo_test/asset_helper.dart';
import 'package:wizmo_test/screens/book_details_screen.dart';
import 'package:wizmo_test/widgets/export_widget.dart';

import 'library_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final images = [
    AssetHelper.influenzaPandemic,
    AssetHelper.educationOfMillonaires,
    AssetHelper.unfuckYourself,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Home',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const StreakCard(),
              const SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LibraryScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: AppColors.darkPurple,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetHelper.getYourShit,
                        width: 100.0,
                      ),
                      const Spacer(),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Free Daily\nSummary',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Get it now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 50.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Personalised Books',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'As per your preference',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 250.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookDetailsScreen(
                              title: 'Industries of the Future',
                              author: 'Ross Alec',
                              imagePath: images[index],
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: images[index],
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(images[index], fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10.0);
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
