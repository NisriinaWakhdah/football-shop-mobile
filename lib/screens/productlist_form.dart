import 'package:flutter/material.dart';
import 'package:football_shop/widgets/left_drawer.dart';
import 'package:intl/intl.dart';    // format angka

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final NumberFormat currencyFormatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  String _name = "";
  int _price = 0;
  String _description = "";
  String _brand = "";
  String _category = "Update";
  String _thumbnail = "";
  String _size = "";
  int _stock = 0;
  bool _isFeatured = false;
  final int _viewers = 0;

  final List<String> _categories = [
    'Perlengkapan Utama',
    'Bola dan Aksesoris',
    'Peralatan Latihan',
    'Peralatan Wasit',
    'Sport Care',
    'Update',
    'Exclusive',
    'Hot Deals',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Add Product Form',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 131, 151, 255),
        foregroundColor: Colors.white,
      ),
      drawer: LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==== INPUT NAMA PRODUK ====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Produk",
                    labelText: "Nama Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value){
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value){
                    if (value == null || value.isEmpty){
                      return "Silakan isi nama produk yang akan dijual";
                    }
                    return null;
                  },
                ),
              ),

              // ==== INPUT HARGA PRODUK
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Harga Produk",
                    labelText: "Harga Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value){
                    // menghapus karakter yang bukan angka / mengubah string menjadi integer
                    String numericString = value.replaceAll(RegExp(r'[^0-9]'), '');
                    int harga = int.tryParse(numericString) ?? 0;
                    
                    // update state
                    setState(() {
                      _price = harga;
                      _controller.value = TextEditingValue(
                        text: currencyFormatter.format(harga),
                        selection: TextSelection.collapsed(
                          offset: currencyFormatter.format(harga).length),
                      );
                    });
                  },
                  validator: (value){
                    if (_price <= 0) {
                      return "Tetapkan harga produk dengan benar!";
                    }
                    return null;
                  },
                ),
              ),

              // ==== INPUT DESKRIPSI PRODUK ====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: "Deskripsi Produk",
                    labelText: "Deskripsi Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value){
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value){
                    if (value == null || value.isEmpty) {
                      return "Berikan deskripsi mengenai produk anda!";
                    }
                    return null;
                  },
                ),
              ),

              // ==== INPUT BRAND PRODUK ====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Brand Produk",
                    labelText: "Brand Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value){
                    setState(() {
                      _brand = value!;
                    });
                  },
                  validator: (String? value){
                    if (value == null || value.isEmpty) {
                      return "Masukkan nama brand dari produk anda!";
                    }
                    return null;
                  },
                ),
              ),

              // ==== INPUT CATEGORY PRODUK ====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Kategori",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  initialValue: _category,
                  items: _categories
                        .map((cat) => DropdownMenuItem(
                              value: cat,
                              child: Text(
                                  cat[0].toUpperCase() + cat.substring(1)),
                            ))
                        .toList(),
                  onChanged: (String? newValue){
                    setState(() {
                      _category = newValue!;
                    });
                  },
                )
              ),

              // ==== INPUT URL THUMBNAIL ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "URL Thumbnail",
                    labelText: "URL Thumbnail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value){
                    setState(() {
                      _thumbnail = value!;
                    });
                  },
                ),
              ),

              // === INPUT SIZE PRODUK ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Size Produk",
                    labelText: "Size Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value){
                    setState(() {
                      _size = value!;
                    });
                  },
                  validator: (String? value){
                    if (value == null || value.isEmpty) {
                      return "Jangan lupa mengisi ukuran produknya, yaa...";
                    }
                    return null;
                  },
                ),
              ),

              // ==== INPUT STOCK PRODUK
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Stok Produk",
                    labelText: "Stok Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value){
                    setState(() {
                      _stock = int.tryParse(value) ?? 0;  // mengubah string menjadi integer
                    });
                  },
                  validator: (value){
                    final stok = int.tryParse(value ?? '');
                    if (stok == null || stok <=  0) {
                      return "Masukkan stok produk dengan benar!";
                    }
                    return null;
                  },
                ),
              ),

              // === INPUT IS FEATURED ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SwitchListTile(
                  title: const Text("Tandai sebagai Produk Unggulan"),
                  value: _isFeatured,
                  onChanged: (bool value){
                    setState(() {
                      _isFeatured = value;
                    });
                  },
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.indigo),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Produk berhasil ditambahkan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama Produk: $_name'),
                                    Text('Deksripsi Produk: $_description'),
                                    Text('Harga: ${currencyFormatter.format(_price)}'),
                                    Text('Stok: $_stock'),
                                    Text('Size: $_size'),
                                    Text('Brand: $_brand'),
                                    Text('Kategori: $_category'),
                                    Text('Thumbnail: $_thumbnail'),
                                    Text('Unggulan: ${_isFeatured ? "Ya" : "Tidak"}'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                    _controller.clear();
                                    _price = 0;
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text("Launch Product",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}