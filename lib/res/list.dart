import 'package:flutter/material.dart';

import '../models/models.dart';
import 'strings.dart';

List<MCategory> dataCategories = <MCategory>[
  MCategory(
    iconPath: IconPath.shoes,
    title: 'Shoes',
  ),
  MCategory(
    iconPath: IconPath.tshirt,
    title: 'T-Shirt',
  ),
  MCategory(
    iconPath: IconPath.watch,
    title: 'Watch',
  ),
  MCategory(
    iconPath: IconPath.backpack,
    title: 'Backpack',
  ),
];

List<MProduct> dummyProducts = <MProduct>[
  MProduct(
    photoUrls: [
      'assets/images/shoes-1.png',
      'assets/images/shoes-2.png',
      'assets/images/shoes-3.png',
      'assets/images/shoes-4.png',
    ],
    id: 1,
    title: 'Nike Air Max 200',
    isFavorite: false,
    category: 'Shoes',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
    price: 269.00,
    rate: 4.5,
    sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
    discount: 30,
    bgColor: Color(0XFFfddfce),
  ),
  MProduct(
      photoUrls: [
        'assets/images/shoes-2.png',
        'assets/images/shoes-1.png',
        'assets/images/shoes-3.png',
        'assets/images/shoes-4.png',
      ],
      id: 2,
      title: 'Air Max Motion',
      isFavorite: true,
      category: 'Shoes',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
      price: 260.00,
      rate: 3.0,
      sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
      discount: null,
      bgColor: Color(0XFFc7e4f3)),
  MProduct(
    photoUrls: [
      'assets/images/shoes-3.png',
      'assets/images/shoes-1.png',
      'assets/images/shoes-2.png',
      'assets/images/shoes-4.png',
    ],
    id: 4,
    title: 'Excee Sneakers',
    isFavorite: false,
    category: 'Shoes',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
    price: 290.00,
    rate: 4.0,
    sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
    discount: null,
    bgColor: Color(0XFFcfe7ce),
  ),
  MProduct(
    photoUrls: [
      'assets/images/shoes-4.png',
      'assets/images/shoes-1.png',
      'assets/images/shoes-2.png',
      'assets/images/shoes-3.png',
    ],
    id: 4,
    title: 'Leather Sneakers',
    isFavorite: false,
    category: 'Shoes',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
    price: 290.00,
    rate: 5.0,
    sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
    discount: 40,
    bgColor: Color(0XFFf4eeb9),
  ),
  MProduct(
    photoUrls: [
      'assets/images/shoes-1.png',
      'assets/images/shoes-2.png',
      'assets/images/shoes-3.png',
      'assets/images/shoes-4.png',
    ],
    id: 5,
    title: 'Nike Air Max 200',
    isFavorite: false,
    category: 'Shoes',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
    price: 269.00,
    rate: 4.5,
    sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
    discount: 30,
    bgColor: Color(0XFFfddfce),
  ),
  MProduct(
      photoUrls: [
        'assets/images/shoes-2.png',
        'assets/images/shoes-1.png',
        'assets/images/shoes-3.png',
        'assets/images/shoes-4.png',
      ],
      id: 6,
      title: 'Air Max Motion',
      isFavorite: true,
      category: 'Shoes',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
      price: 260.00,
      rate: 3.0,
      sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
      discount: null,
      bgColor: Color(0XFFc7e4f3)),
  MProduct(
    photoUrls: [
      'assets/images/shoes-3.png',
      'assets/images/shoes-1.png',
      'assets/images/shoes-2.png',
      'assets/images/shoes-4.png',
    ],
    id: 7,
    title: 'Excee Sneakers',
    isFavorite: false,
    category: 'Shoes',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
    price: 290.00,
    rate: 4.0,
    sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
    discount: null,
    bgColor: Color(0XFFcfe7ce),
  ),
  MProduct(
    photoUrls: [
      'assets/images/shoes-4.png',
      'assets/images/shoes-1.png',
      'assets/images/shoes-2.png',
      'assets/images/shoes-3.png',
    ],
    id: 8,
    title: 'Leather Sneakers',
    isFavorite: false,
    category: 'Shoes',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
    price: 290.00,
    rate: 5.0,
    sizes: ['US 6', 'US 7', 'US 8', 'US 9'],
    discount: 40,
    bgColor: Color(0XFFf4eeb9),
  ),
];
