Nama: Nisriina Wakhdah Haris<br>
NPM: 2406360445<br>
Kelas: PBP - B<br>

<details>
<Summary><b>TUGAS INDIVIDU 7</b></Summary>

1. Pohon widget (widget tree) merupakan struktur pohon di mana setiap simpulnya (node) merupakan widget sehingga berfungsi sebagai representasi logis dari seluruh widget UI dan setiap widget memiliki hubungan induk-anak (parent-child) yang membentuk keseluruhan tampilan aplikasi. Struktur hierarkis ini menentukan bagaimana antarmuka pengguna (UI) aplikasi diatur dan  ditampilkan. Hubungan antara parent dan child pada flutter terjadi dalam tiga tahap, yaitu:<br>
a. Layout (penataan) -> Parent menentukan ukuran dan posisi childnya, ex: Column sebagai parent mengatur bahwa childnya akan ditata secara vertikal<br>
b. Painting/rendering (penggambaran) -> Parent memberi tahu di mana child harus digambar di layar hal ini karena flutter melakukan rendering dari parent ke child hingga ke node paling bawah (widget terkecil)<br>
c. State and Rebuild (Perubahan tampilan) -> Jika parent atau child mengalami perubahan state, maka bagian yang mengalami perubahan tersebut akan dibangun ulang (rebuild) (flutter hanya rebuild bagian pohon yang berubah, tidak mengubah seluruh UI)

2. Berikut ini adalah daftar widget yang digunkan pada proyek saya beserta dengan fungsinya:<br>
    - MaterialApp -> Berfungsi mengatur tema, navigasi, struktur dasar aplikasi, dan sebagai root widget<br>
    - Scaffold -> Berfungsi menyediakan kerangka dasar tampilan halaman Flutter, seperti AppBar, body, floatingActionButton, drawer, dll.<br>
    - AppBar -> Merupakan child dari Scaffold, berfungsi menampilkan judul, ikon navigasi, dan action buttons di bagian atas layar (seperti navigation bar)<br>
    - RichText dan TextSpan -> Berfungsi menampilkan teks dengan style yang berbeda dalam satu baris dan TextSpan berfungsi untuk mewakili potongan teks tersebut dengan style tertentu<br>
    - Theme -> Berfungsi menerapkan tema ke widget childnya<br>
    - Padding -> Berfungsi memberi jarak (ruang) di sekitar widget childnya<br>
    - Column -> Berfungsi mengatur tata letak widget di mana ia menyusun childnya secara vertikal<br>
    - SizedBox -> Berfungsi memberi ruang kosong atau jarak antar elemen dengan ukuran tertentu<br>
    - Center -> Berfungsi menempatkan childnya di tengah layar secar horizontal atau vertikal<br>
    - Text -> Berfungsi untuk menampilkan teks di layar dengan style tunggal<br>
    - Gridview.count -> Berfungsi menampilkan widget dalam bentuk grid dengan jumlah yang tetap<br>
    - Material -> Berfungsi memberikan efek, seperti bayangan, warna, dan animasi ripple, widget ini wajib digunakan ketika menggunakan widget Inkwell<br>
    - Inkwell -> Berfungsi memberikan efek gelombang (ripple) saat widget ditekan<br>
    - Container -> Berfungsi menyediakan wadah serbaguna yang dapat diatur padding, warna, ukuran, dan stylenya<br>
    - Icon -> Berfungsi menampilkan ikon<br>
    - SnackBar -> Berfungsi menampilkan pesan singkat di bawah layar ketika suatu aksi dilakukan

3. MaterialApp adalah widget utama (root widget) yang menggunakan Material Design (Sistem desain yang dibuat oleh Google untuk tampilan yang konsisten, modern, dan responsif di semua perangkat), merupakan widget yang pertama kali dibangun dalam pohon widget, dan mengatur banyak konfigurasi yang memengaruhi seluruh aplikasi. Berikut ini adalah fungsi dari MaterialApp:<br>
    - Menentukan tema aplikasi
    - Mengatur navigasi antar halaman<br>
    - Menentukan halaman awal (home)<br>
    - Menangani debug banner dan title<br>
    - Menyediakan context global<br>
    - Menyediakan konfigurasi bahasa dan arah teks<br>
    
    MaterialApp sering digunakan sebagai widget root karena merupakan fondasi utama dari aplikasi Flutter. Widget ini mengelola navigasi dan routing, mengatur tema global aplikasi, serta menyediakan konteks material design agar widget seperti Scaffold, AppBar, dll dapat bekerja dengan benar

4. Stateless widget adalah widget yang bersifat tidak akan berubah ketika disebabkan oleh interakasi user, sedangkan Stateful widget adalah widget yang bersifat dinamis sehingga dapat berubah jika terdapat interaksi user atau hal lainnya. Berikut ini adalah perbedaan keduanya:<br>
    - Stateless widget tidak memiliki state internal, sedangkan stateful widget memiliki state internal<br>
    - Stateless widget bersifat immutable dan stateful widget bersifat mutable sehingga statenya dapat berubah sehingga dapat memperbarui data (yang berubah hanyalah datanya, widgetnya tetap)<br>
    - Child widget dari stateless widget akan menerima deskripsinya dari parent widget dan tidak dapat mengubahnya sendiri, sedangkan pada stateful widget, tampilanya dapat berubah secara dinamis sesuai dengan perubahan state<br>
    - Stateless widget hanya dibangun sekali saja, sedangkan stateful widget dapat dibangun ulang (rebuild) berkali-kali setiap kali ada perubahan state<br>
    
    Kita dapat menggunakan Stateless widget ketika tampilan tidak perlu berubah setelah pertama kali dibuat sehingga seluruh data yang ditampilkan tidak bergantung pada interaksi pengguna, waktu, dll, contohnya seperti ikon, teks statis, dan foto. Namun, apabila tampilan perlu berubah secara dinamis selama aplikasi berjalan, kita dapat menggunakan stateful widget sehingga data di dalam widget dapat berubah dan memengaruhi tampilan UI, contohnya seperti tombol counter, status tombol, dan input

5. BuildContext adalah objek yang digunakan Flutter untuk memberikan informasi tentang lokasi widget di pohon widget (widget tree). Objek ini mewakili konteks build tempat widget saat ini sedang dibangun atau diperbarui. BuildContext penting dalam Flutter karena:<br>
    1. Flutter menggunakan BuildContext untuk mengetahui letak suatu widget dibangun di dalam widget tree<br>
    2. BuildContext memungkinkan widget mengakses data, seperti tema aplikasi, ukuran layar, dan data lain milik parentnya<br>
    3. BuildContext berperan penting dalam navigasi, di mana digunakan untuk menavigasi ke layar atau widget lain dan membantu dalam membangun tumpukan navigasi<br>
    4. BuildContext digunakan dalam manajemen status untuk mengakses data status dan melakukan perubahan status saat kita menggunakan pustaka manajemen status, seperti Provider atau RiverPod<br>
    
    Dalam metode build, BuildContext digunakan sebagai argumen (BuildContext context) dan diberikan secara otomatis oleh flutter. Berikut ini adalah contoh kodenya:<br>
    <pre><code>
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
    }
    </code></pre>

6. Hot Reload merupakan fitur di Flutter yang dapat memasukkan perubahan kode ke dalam Virtual Machine dengan cepat tanpa harus memulai/menjalankan ulang seluruh aplikasi. Pada Hot Reload, state aplikasi dipertahankan, sehingga kita tidak akan kehilangan data atau memulai ulang aplikasi. Sedangkan Hot Restart adalah fitur yang dapat memasukkan peubahan kode ke dalam VM tetapi memulai ulang seluruh aplikasi, sehingga menghapus state aplikasi dan memulai state dari awal. Berikut ini adalah perbedaan dari Hot Reload dan Hot Restart, yaitu:
    - Kinerja Hot Reload lebih cepat dibandingkan dengan Hot Restart (Hot Restart lebih lambat dibandingkan Hot Reload)
    - Hot Reload tidak akan mengubah state aplikasi, sedangkan Hot Restart tidak mempertahankan state aplikasi sehingga state akan hilang dan dimulai dari awal aplikasi
    - Cara melakukan Hot Reload adalah dengan menggunakan tombol ctrl + \, sedangkan Hot Restart menggunakan tombol ctrl + shift + \
    - Hot Reload cocok digunakan saat mengubah tampilan UI, teks, layout dll, sedangkan Hot Restart digunakan saat mengubah struktur logika utama, variable global, atau konfigurasi awal
    - Hot Reload tidak akan menjalankan ulang apliksi, sedangkan Hot Restart akan menjalankan ulang aplikasi
</details>