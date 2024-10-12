import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final bool? isBorder;
  final bool? isLoading;
  final Color? bgColor;
  final Color? textColor;
  final width;

  const AppButton({
    super.key,
    required this.text,
    this.onTap,
    this.isBorder,
    this.isLoading,
    this.bgColor,
    this.textColor, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: bgColor ?? appColor5,
          border:
              isBorder == true ? Border.all(color: appColor6) : null,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: isLoading == true
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              : Center(
                  child: Text(text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor ?? Colors.white,
                      )),
                ),
        ),
      ),
    );
  }
}
