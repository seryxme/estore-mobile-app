// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // List<Card> _buildGridCards(BuildContext context) {
  //   List<Product> products = ProductsRepository.loadProducts(Category.all);
  //
  //   if (products.isEmpty) {
  //     return const <Card>[];
  //   }
  //
  //   final ThemeData theme = Theme.of(context);
  //   final NumberFormat formatter = NumberFormat.simpleCurrency(
  //       locale: Localizations.localeOf(context).toString());
  //
  //   return products.map((product) {
  //     return Card(
  //       clipBehavior: Clip.antiAlias,
  //       elevation: 0.0,
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           AspectRatio(
  //             aspectRatio: 18 / 11,
  //             child: Image.asset(
  //               product.assetName,
  //               package: product.assetPackage,
  //               fit: BoxFit.fitWidth,
  //             ),
  //           ),
  //           Expanded(
  //             child: Padding(
  //               padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.end,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: <Widget>[
  //                   Text(
  //                     product.name,
  //                     style: theme.textTheme.headline6,
  //                     softWrap: false,
  //                     overflow: TextOverflow.ellipsis,
  //                     maxLines: 1,
  //                   ),
  //                   const SizedBox(height: 4.0),
  //                   Text(
  //                     formatter.format(product.price),
  //                     style: theme.textTheme.caption,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
  //   }).toList();
  // }
  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
              print("Menu button is pressed");
              },
        ),
        title: const Text('CZG MULTISTORES'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print("Search button is pressed");
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print("Filter button is pressed");
            },
          ),
        ],
      ),
      body: AsymmetricView(
        products: ProductsRepository.loadProducts(Category.all),
      ),
        resizeToAvoidBottomInset: false,
    );
  }
}
