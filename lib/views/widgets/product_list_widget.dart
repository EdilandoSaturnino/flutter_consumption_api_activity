import 'package:flutter/material.dart';
import '../../models/product.dart';

class ProductListWidget extends StatelessWidget {
  final List<Product> products;

  const ProductListWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          elevation: 2.0,
          margin: const EdgeInsets.all(10),
          child: ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: Image.network(
              product.image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text(
              product.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.description,
                  style: const TextStyle(color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 5),
                Text(
                  'R\$${product.price}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
