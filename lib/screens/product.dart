import 'package:flutter/material.dart';

import '../models/m-product.dart';
import '../widgets/widgets.dart';

class Product extends StatefulWidget {
  final MProduct product;
  Product({
    @required this.product,
  });

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _currentSize = 0, _currImg = 0;

  void _changeSize(int i) {
    setState(() {
      _currentSize = i;
    });
  }

  void _next() {
    setState(() {
      if (_currImg < widget.product.photoUrls.length - 1)
        _currImg++;
      else
        _currImg = 0;
    });
  }

  void _prev() {
    setState(() {
      if (_currImg > 0)
        _currImg--;
      else
        _currImg = widget.product.photoUrls.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const WTitleAppBar(),
        actions: [
          WIconFavorite(
            product: widget.product,
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (widget.product.discount != null)
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFF92c6df),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          widget.product.discount.toString() + '%',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.velocity.pixelsPerSecond.dx > 0)
                        _prev();
                      else if (details.velocity.pixelsPerSecond.dx < 0) _next();
                    },
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  widget.product.bgColor.withOpacity(.1),
                                  Theme.of(context).scaffoldBackgroundColor,
                                  Theme.of(context).scaffoldBackgroundColor,
                                  widget.product.bgColor.withOpacity(.1),
                                ],
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(40),
                              decoration: BoxDecoration(
                                color: widget.product.bgColor,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                  color: Color(0XFFfeebde),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              widget.product.photoUrls[_currImg],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 100,
                              child: Row(
                                children: _getIndicators,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  WMyDivider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          widget.product.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          '(${widget.product.rate})',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 5,
                    ),
                    child: Text(
                      widget.product.description,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Size : ',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                      ),
                    ),
                    title: Row(
                        children:
                            List.generate(widget.product.sizes.length, (index) {
                      return WBadgeItem(
                        text: widget.product.sizes[index],
                        index: index,
                        onTap: _changeSize,
                        isActive: _currentSize == index,
                      );
                    }).toList()),
                  ),
                  ListTile(
                    leading: Text(
                      'Avaible Color : ',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widget.product.colors
                          .map((color) => Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: new Offset(0, -1),
                                        blurRadius: 9,
                                        spreadRadius: 4,
                                      ),
                                    ],
                                    shape: BoxShape.circle,
                                    color: color,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      widget.product.price.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF4e55af),
                      ),
                    ),
                  ],
                ),
                FlatButton.icon(
                  padding: const EdgeInsets.all(10),
                  color: Color(0XFFf7f7f7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  onPressed: () {},
                  label: Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: Color(0XFF4e55af),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Color(0XFF4e55af),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<WIndicatorCarousel> get _getIndicators {
    List<WIndicatorCarousel> _indicators = <WIndicatorCarousel>[];
    for (var i = 0; i < widget.product.photoUrls.length; i++) {
      if (_currImg == i)
        _indicators.add(WIndicatorCarousel(isActive: true));
      else
        _indicators.add(WIndicatorCarousel(isActive: false));
    }
    return _indicators;
  }
}
