import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.dataset_outlined,
            color: Colors.grey[600],
            size: 40,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // text
            RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'We have prepared new products ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )
                    ),

                    TextSpan(
                      text: 'for you',
                      style: TextStyle(
                        color: Colors.lightGreenAccent[100],
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ]
                )
            ),

            const SizedBox(height: 20),

            // search bar
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 232.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 10),

                CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  child: Icon(
                    Icons.swap_horiz_sharp,
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    'All',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),

                Text(
                  'Newest',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),

                Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),

                Text(
                  'Man',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),

                Text(
                  'Woman',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
                child: MasonryGridView.builder(
                  itemCount: 6,
                    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset('lib/images/image${index + 7}.jpg'),
                    ),
                  ),
                )
            ),

            const SizedBox(height: 10),
            
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.grey[500],
                  ),

                  Icon(
                    Icons.shop_outlined,
                    color: Colors.grey[500],
                  ),

                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[500],
                  ),

                  Icon(
                    Icons.settings,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
const Text(
                'We have prepared new products for you',
              style: TextStyle(
                fontSize: 30,
                // fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
 */
