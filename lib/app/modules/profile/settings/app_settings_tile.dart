import 'package:flutter/material.dart';
import '../../../../utils/app_defaults.dart';

class AppMenuTile extends StatelessWidget {
  const AppMenuTile({
    super.key,
    required this.label,
    this.trailing,
    this.onTap,
    this.icon,
  });

  final String label;
  final Widget? trailing;
  final void Function()? onTap;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: AppDefaults.borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppDefaults.borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(label,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Divider(thickness: 0.3),
            ],
          ),
        ),
      ),
    );
  }
}
