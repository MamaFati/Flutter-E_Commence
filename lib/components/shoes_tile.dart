import 'package:e_commernce/models/heels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class heelsTile extends StatelessWidget {
  heels Heels;
  heelsTile({super.key, required this.Heels, required this.onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              Heels.ImagePath,
              width: 200,
            ),
          ),

          // shoe description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              Heels.Description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // shoe price
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // heels name
                    Text(
                      Heels.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 5),

                    // heels price
                    Text(
                      '\$ ' + Heels.price,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ],
              // plus bottom
            ),
          )

          // buttom to add cart
        ],
      ),
    );
  }
}
