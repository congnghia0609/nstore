/*
 * Copyright 2020 nghiatc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

///
/// @author nghiatc
/// @since Aug 28, 2020

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nstore/constants.dart';
import 'package:nstore/models/Product2.dart';
import 'package:nstore/screens/product/details/components/product_image.dart';

import 'chat_and_add_to_cart.dart';
import 'color_dots.dart';
import 'list_of_colors.dart';

class Body extends StatelessWidget {
  final Product2 product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it provide us total and width
    Size size = MediaQuery.of(context).size;
    // it enable us total height and width
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              // height: 200,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductPoster(
                        size: size,
                        image: product.image,
                      ),
                    ),
                  ),
                  ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}

