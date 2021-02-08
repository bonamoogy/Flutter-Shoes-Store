import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import '../providers/providers.dart';
import '../res/list.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MCategory _currCategory = dataCategories[0];

  final _scrolControlelr = new ScrollController();

  void _onTapCategory(MCategory category) {
    setState(() {
      _currCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrolControlelr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 15),
          _getHeader,
          _getCategories,
          const SizedBox(height: 15),
          _getProducts,
        ],
      ),
    );
  }

  Widget get _getHeader => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'Our Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget get _getCategories => Container(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: dataCategories
              .map((e) => WCategoryItem(
                    category: e,
                    onTap: _onTapCategory,
                    isActive: e == _currCategory,
                  ))
              .toList(),
        ),
      );

  Widget get _getProducts =>
      Consumer<ProvProducts>(builder: (ctx, prov, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.count(
            controller: _scrolControlelr,
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: (150 / 200),
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 4.0,
            children:
                prov.getProducts.map((e) => WProductCard(product: e)).toList(),
          ),
        );
      });
}
