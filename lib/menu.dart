import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<ItemHomePage> items = [
    ItemHomePage("All Products", Icons.list_alt_rounded),
    ItemHomePage("My Products", Icons.inventory_sharp),
    ItemHomePage("Create Product", Icons.add_business_rounded)
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Football ",
                style: TextStyle(
                  color: Color.fromARGB(255, 81, 101, 204),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Shop",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),

            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Selamat datang di Football Shop",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,

                    children: items.map((ItemHomePage item){
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}

class ItemHomePage{
  final String name;
  final IconData icon;

  ItemHomePage(this.name, this.icon);
}

class ItemCard extends StatelessWidget{
  final ItemHomePage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      color: _getCardColor(item.name),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          // menampilkan pesan SnackBar saat kartu ditekan
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")));
          
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getCardColor(String name){
    switch(name){
      case "All Products":
        return Colors.blue;
      case "My Products":
        return Colors.green;
      case "Create Product":
        return Colors.red;
      default:
        return Colors.tealAccent;
    }
  }
}
