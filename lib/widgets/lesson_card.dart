import 'package:flutter/material.dart';
import 'package:wizmo_test/app_colors.dart';

class LessionsCard extends StatelessWidget {
  const LessionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Lessons',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkPurple,
                  ),
                ),
                title: Text('Lesson ${index + 1}'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.darkPurple,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(thickness: 1.2);
            },
            itemCount: 7,
          ),
        ],
      ),
    );
  }
}
