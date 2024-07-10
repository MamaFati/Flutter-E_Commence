import 'package:e_commernce/components/shoes_tile.dart';
import 'package:e_commernce/models/cart.dart';
import 'package:e_commernce/models/heels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  // add heels to carts
  void addHeelsToCart(heels Heels) {
    Provider.of<cart>(context, listen: false).addItemToCart(Heels);
    // alert the user, heels succesfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully Added!!"),
        content: Text("check your carts"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          // messages
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              "Everyone fly ..Some fly longer than other ",
              style: TextStyle(color: Colors.grey),
            ),
          ),

          // Hot picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot picks 🔥",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
              child: SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  // get a heel from shop list
                  heels Heels = value.getHeelsList()[index];
                  return heelsTile(
                    Heels: Heels,
                    onTap: () => addHeelsToCart(Heels),
                  );
                })),
          )),
          //
          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
