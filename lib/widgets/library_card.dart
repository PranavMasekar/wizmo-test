import 'package:flutter/material.dart';
import 'package:wizmo_test/app_colors.dart';
import 'package:wizmo_test/asset_helper.dart';

import 'export_widget.dart';

class LibraryCard extends StatelessWidget {
  const LibraryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: AppColors.lightPurple,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              AssetHelper.unfuckYourself,
              width: 60.0,
            ),
          ),
          const SizedBox(width: 10.0),
          const SizedBox(
            width: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unfuck Yourself',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Dean Graziosi',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Wrap(
                  spacing: 5,
                  children: [
                    CustomChip(
                      label: 'Business',
                      iconData: Icons.business,
                    ),
                    CustomChip(
                      label: 'Self Help',
                      iconData: Icons.self_improvement,
                    ),
                    CustomChip(
                      label: 'Parenting',
                      iconData: Icons.people,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundColor: AppColors.darkPurple,
            radius: 20.0,
            child: Text(
              '2',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
