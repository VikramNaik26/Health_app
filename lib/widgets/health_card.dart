import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_text.dart';

class HealthCard extends StatelessWidget {
  const HealthCard({
    super.key,
    required this.size,
    required this.title,
    required this.iconPath,
    // this.mainIconWidth = 0,
    this.textColor,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.readings = '',
    this.unit = '',
    this.mainIconPath = '',
    this.linearGradient,
    this.isReadingsCenter = false,
  });

  final Size size;
  final String title;
  final String readings;
  final String unit;
  // final double? mainIconWidth;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final String iconPath;
  final String mainIconPath;
  final LinearGradient? linearGradient;
  final bool isReadingsCenter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .426,
      height: height ?? size.height * .32,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: borderColor?.withOpacity(.4) ?? Colors.grey.withOpacity(.5),
        ),
        gradient: linearGradient,
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor ?? Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: title,
                  color: textColor ?? const Color(0xff53668E),
                  fontWeight: FontWeight.bold,
                ),
                SvgPicture.asset(
                  iconPath,
                )
              ],
            ),
          ),
          if (mainIconPath.isNotEmpty)
            Center(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    mainIconPath,
                  ),
                  if (isReadingsCenter)
                    Positioned(
                      top: 29,
                      left: 29,
                      child: Column(
                        children: [
                          AppText(
                            text: readings,
                            color: textColor?.withOpacity(.60) ??
                                const Color(0xff53668E),
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          AppText(
                            text: unit,
                            color: textColor?.withOpacity(.60) ??
                                const Color(0xff53668E),
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (readings.isNotEmpty && !isReadingsCenter)
                  AppText(
                    text: readings,
                    color:
                        textColor?.withOpacity(.60) ?? const Color(0xff53668E),
                    fontWeight: FontWeight.bold,
                  ),
                const SizedBox(
                  width: 3,
                ),
                if (unit.isNotEmpty && !isReadingsCenter)
                  AppText(
                    text: unit,
                    color:
                        textColor?.withOpacity(.60) ?? const Color(0xff53668E),
                    fontSize: 12,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
