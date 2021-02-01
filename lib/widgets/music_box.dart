import 'package:flutter/material.dart';
import 'package:volyaApp/shared.dart';

class MusicBox extends StatelessWidget {
  final String image;
  final String sound;
  final Function onTap;
  final bool isSelected;

  MusicBox({
    this.image,
    this.sound,
    this.onTap,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: isSelected ? 3 : 0, color: AppColors.borderColor),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
