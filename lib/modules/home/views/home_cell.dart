import 'package:caramelo/resources/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeCell extends StatelessWidget {
  HomeCell({
    Key? key,
    required this.categoryName,
    required this.categoryImage
  }) : super(key: key);

  final String categoryName;
  final String categoryImage;

  final CustomColors colors = CustomColors();

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          CustomColors.lightCaramel,
          CustomColors.lightCaramel,
          CustomColors.lightCaramel,
          CustomColors.lightCaramel.withOpacity(0.5),
          CustomColors.lightCaramel.withOpacity(0.5),
        ],
        stops: const <double>[0, 0.2, 0.4, 0.6, 1],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        const SizedBox(height: 10),
        Image.asset(
          categoryImage,
          width: 40,
          height: 40,
          fit: BoxFit.fill,
        ),
        Text(
          categoryName,
          style: Theme.of(context).textTheme.subtitle2,
          maxLines: 2,
        ),
      ],
    ),
  );
}
