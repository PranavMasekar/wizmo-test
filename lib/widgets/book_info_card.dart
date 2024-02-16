import 'package:flutter/material.dart';
import 'package:wizmo_test/app_colors.dart';

class BookInforCard extends StatelessWidget {
  const BookInforCard({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
  });

  final String title;
  final String author;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.lightPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: AppColors.darkPurple.withOpacity(0.4),
              radius: 15,
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: AppColors.darkPurple,
              ),
            ),
          ),
          Column(
            children: [
              Hero(
                tag: imagePath,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(imagePath),
                    width: 180,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 5,
                width: 180,
                decoration: BoxDecoration(
                  color: AppColors.darkPurple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColors.darkPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                author,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.bookmarks,
                    color: AppColors.darkPurple.withOpacity(0.7),
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '7 Lessions',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.timelapse_rounded,
                    color: AppColors.darkPurple.withOpacity(0.7),
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '17 mins',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const Column(
            children: [
              Icon(Icons.exit_to_app_outlined),
              SizedBox(height: 10),
              Icon(Icons.bookmark_add_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
