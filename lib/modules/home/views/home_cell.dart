import 'package:flutter/material.dart';

class HomeCell extends StatelessWidget {
  const HomeCell({
    required this.categoryName,
    required this.categoryImage
  });

  final String categoryName;
  final String categoryImage;

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).buttonColor,
          ],
          stops: const <double>[0, 0.2, 0.4, 0.6, 1],
        ),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Image.asset(
            categoryImage,
            width: 80,
            height: 80,
            fit: BoxFit.fill,
          ),
          Text(
            categoryName,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
}
