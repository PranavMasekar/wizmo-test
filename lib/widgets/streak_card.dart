import 'package:flutter/material.dart';
import 'package:wizmo_test/app_colors.dart';
import 'package:wizmo_test/asset_helper.dart';

class StreakCard extends StatelessWidget {
  const StreakCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      color: AppColors.lightPurple,
      child: Row(
        children: [
          const SizedBox(width: 5.0),
          SizedBox(
            width: 40,
            height: 40,
            child: Stack(
              children: [
                Image.asset(
                  AssetHelper.fireImage,
                ),
                const Positioned(
                  right: 19,
                  top: 13,
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5.0),
          const Text(
            'Wow! your streak rocks!',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          const Text(
            'Come back\ntomorrow',
            style: TextStyle(
              fontSize: 12.0,
              overflow: TextOverflow.clip,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
