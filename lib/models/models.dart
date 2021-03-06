import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

// Grocery item model
class MGrocery {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final int price;
  final int discount;
  

  MGrocery(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.price,
      required this.discount});

  factory MGrocery.fromJson(Map<String, dynamic> json) {
    return MGrocery(
      id: json['id'],
      title: json['product']['title' ],
    description: json['product']['description'],
      price: json['price'],
      discount: json['discount'],
      imageUrl: "assets/images/chicken.png",
    );
  }
}

// Categories item model
class MCategory {
  final int id;
  final String title;
  final String url;
  final Color color;

  MCategory({required this.id, required this.title, required this.url, required this.color});
}

// Cart item model
class MCartItem {
  final MGrocery item;
  int cout;

  MCartItem({required this.item, required this.cout});
}

class MGroceries {
  final String title;
  final Color color;
  final String url;

  MGroceries({required this.title, required this.color, required this.url});
}
