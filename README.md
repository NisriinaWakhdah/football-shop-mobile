Nama: Nisriina Wakhdah Haris<br>
NPM: 2406360445<br>
Kelas: PBP - B<br>
Link Repositori: https://github.com/NisriinaWakhdah/football-shop-mobile.git <br>

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
    - Cara melakukan Hot Reload adalah dengan menggunakan tombol ctrl + \ . Sedangkan Hot Restart menggunakan tombol ctrl + shift + \
    - Hot Reload cocok digunakan saat mengubah tampilan UI, teks, layout dll, sedangkan Hot Restart digunakan saat mengubah struktur logika utama, variable global, atau konfigurasi awal
    - Hot Reload tidak akan menjalankan ulang aplikasi, sedangkan Hot Restart akan menjalankan ulang aplikasi
</details>

<details>
<Summary><b>TUGAS INDIVIDU 8</b></Summary>

1. Navigator.push() digunakan untuk menambahkan suatu route ke dalam stack route. Method ini membuat route yang ditambahkan berada pada bagian paling atas stack (LIFO), sehingga route tersebut akan muncul dan ditampilkan kepada penguna dan dengan menggunakan method ini, pengguna dapat menavigasi kembali ke halaman sebelumnya. Sedangkan Navigator.pushReplacement() digunakan untuk menggantikan atau menghapus rute yang sedang ditampilkan kepada pengguna atau rute lama dengan suatu rute baru di tumpukan navigasi sehingga pengguna tidak akan bisa menavigasi kembali ke rute atau halaman semula. Navigator.push() dapat digunakan saat pengguna berada di halaman All atau My Products, lalu menekan tombol Add Product dan setelah berhasil menambahkan produk, user bisa kembali ke halaman sebelumnya, yaitu halaman yang menampilkan produk. Sedangkan Navigator.pushReplacement() dapat digunakan saat user berada di halaman logout dan ketika berhasil logout, dia tidak bisa menekan tombol back untuk kembali ke halaman sebelumnya, misalnya halaman utama karena dia harus login terlebih dahulu  

2. Saya memanafaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi dengan menjadikan Scaffold sebagai kerangka utama (root) untuk setiap halaman agar memiliki tata letak yang sama. Di dalam Scaffold terdapat AppBar untuk menampilkan nama aplikasi, yaitu Football Shop serta Drawer di bagian kiri sebagai menu navigasi untuk memudahkan akses ke halaman lain

3. Berikut ini merupakan kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView beserta penggunaannya, yaitu:
    - Padding: Menambahkan ruang di sekitar elemen sehingga dapat memberi jarak antar elemen agar tidak terlalu rapat dan membuat tempilan menjadi lebih rapih, contoh penggunannya adalah ketika membuat kolom input pada ProductFormPage, di mana untuk setiap input dibungkus dalam widget Padding agar terdapat jarak untuk setiap kolom input
    <pre><code>
    .....
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
            )
            ......
        ],
    ),</code></pre>
    - SingleChildScrollView: Membuat seluruh halaman bisa di-scroll secara vertikal atau horizontal dan hanya memiliki satu child di dalamnya. Widget ini dapat membantu untuk menghindari overflow ketika form panjang atau keyboard muncul serta cocok untuk form yang memiliki banyak field, contoh penggunaannya adalah ketika membuat form untuk menambahkan produk dan SingleChildScrollView digunakan untuk membungkus Column agar panjang form tidak menyababkan overflow saat layar kecil atau keyborad muncul
    <pre><code>
    .....
    child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: []
                .....
            )
    )</code></pre>
    - ListView: Menampilkan daftar elemen (widgets) yang dapat di-scroll secara vertikal maupun horizontal dan elemen di dalamnya disusun secara linear, mirip seperti Column hanya saja ListView bisa di-scroll secara langsung sedangkan Column tidak dapat di-scroll sehingga perlu dibungkus oleh widget lain, seperti SingleChildScrollView agar bisa di-scroll. Oleh karena itu, kelebihan dari ListView adalah dapat di-scroll otomatis tanpa membutuhkan pembungkus, mudah dikostumisasi, efisien untuk data besar, dan fleksibel. Contoh penggunaanya adalah ketika membuat sebuah Drawer yang berisi daftar navigasi ke halaman lain, seperti Halaman Utama dan halaman Tambah Produk
    <pre><code>
    .......
    @override
    Widget build(BuildContext context){
        return Drawer(
            child: ListView(
                children: [
                    const DrawerHeader(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                        ),
                        child: Column(
                            children: [
                                Text(
                                    'Football Shop',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                ),
                                Padding(padding: EdgeInsets.all(10)),
                                    Text(
                                        "Stay updated with the latest football products!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                        ),
                                ),
                            ],
                        ),
                    ),
                    ListTile(
                        leading: const Icon(Icons.home_work_sharp),
                        title: const Text('Halaman Utama'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context, 
                                MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                                ));
                        },
                    ),
                    ListTile(
                        leading: const Icon(Icons.post_add_rounded),
                        title: const Text('Tambah Produk'),
                        // bagian routing
                        onTap: (){
                            // routing ke NewsFormPage
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductFormPage(),));
                        }
                    )
                ],
            ),
        );
    }
    ...</code></pre>

4. Cara saya menyesuaikan warna tema agar aplikasi Football Shop memiliki indentitas visual yang konsisten dengan brand toko adalah dengan mengatur properti theme pada MaterialApp menggunakan ThemeData dan ColorScheme sesuai warna brand sehingga seluruh tampilan aplikasi akan konsisten dengan identitas visual toko karena tidak perlu menetapkan warna secara manual pada setiap widget
</details>

<details>
<Summary><b>TUGAS INDIVIDU 9</b></Summary>

1. Dalam mengambil/mengirim data JSON kita perlu membuat model Dartnya terlebih dahulu karena model Dart membuat struktur data yang jelas dan dapat diprediksi sehingga:
    - Setiap field atau atributnya memiliki tipe data yang pasti sehingga dapat menghindari error apabila terdapat nilai yang tipenya tidak sesuai
    - Dengan adanya model, kita bisa mengatur atribut mana yang wajib atau tidak boleh kosong dan mana atribut yang boleh null sehingga dapat mencegah error karena terdapat field yang kosong atau holang saat menerima JSON
    - Model dapat membantu kita mengurangi typo dan error-runtime karena model mendukung fitur autocomplete dan pemeriksaan tipe data pada compile-time sehingga apabila terdapat typo bisa ketahuan sebelum run time
    - Ketika API berubah, kita cukup memperbarui satu file model saja tanpa harus mencari perubahan di banyak tempat dan rawan bug
    
    Berikut ini adalah konsekuensinya apabila tidak menggunakan model:
    - Tidak ada jaminan tipe data yang digunakan sehingga dapat menyebabkan runtime error apabila tipenya tidak sesuai
    - Null safety tidak terjaga dengan baik sehingga apabila terdapat field yang kosong dapat menyebakan program nge-crash
    - Tidak ada autocomplete sehingga apabila terdapat typo baru ketahuan saat runtime
    - Ketika API berubah, kita harus mencari perubahannya di banyak tempat sehingga menyebabkan banyak file yang harus diedit

2. Pada aplikasi flutter package http merupakan package standar untuk melakukan request HTTP sederhana seperti GET, POST, PUT, DELETE, mengirim dan menerima JSON sedangka CookieRequest merupakan kelas khusus dari package pbp_django_auth yang dibuat untuk menghubungkan Flutter dengan Django menggunakan cookies session dari Django sehingga dengan menggunakan CookieRequest aplikasi dapat mengenali siapa user yang sedang login saat ini. Berikut ini adalah perbedaannya:
    - Package http berperan untuk mengirim request HTTP biasa tanpa harus autentikasi (user tidak perlu login) sedangkan CookieRequest berperan untuk mengirim request yang membawa identitas user sehingga Django mengetahui siapa yang sedang mengakses aplikasi
    - Package http tidak menyimpan cookie sedangkan CookieRequest menyimpan cookie session Django setelah login
    - Package http tidak bisa mengakses endpoint Django yang butuh autentikasi sedangkan CookieRequest bisa
    - Package http bersifat stateles sedangkan CookieRequest bersifat statefull

3. Seluruh komponen atau bagian dari aplikasi harus memakai instance CookieRequest agar semua halaman aplikasi mengenali user yang sedang login, semua request membawa cookie yang sama, tidak muncul konflik session, dan tidak. Oleh karena itu, agar seluruh halaman mengetahui status login yang sama, maka semua halaman harus memakai instance yang sama hal ini dikarenakan CookieRequest menyimpan state login dan cookie session Django

4. Agar flutter dapat berkomunikasi dengan Django terdapat beberapa konfigurasi yang diperlukan, yaitu:
    - Mengizinkan Host/Origin Flutter pada ALLOWED_HOSTS pada bagian settings.py project, hal ini dikarenakan Django hanya menerima request dari host yang terdaftar dan apabila origin flutter tidak dimasukkan, maka Django akan menolak request dan muncul error
    - Mengaktifkan CORS (Cross-Origin Resource Sharing) karena Flutter dan Django berasal dari origin yang berbeda dan default dari Django adalah memblokir semua akses cross-origin.
    - Konfigurasi Cookie untuk Login (SameSite, Secure) karena package pbp_django_auth mengandalkan session cookie untuk login, Django harus mengizinkan cookie cross-origin
    - Menambahkan izin internet di android karena secara defaultnya aplikasi android tidak boleh menggunakan internet apabila kita tidak menambahkan izin tersebut, maka aplikasi tidak bisa terhubung dengan server
    - Menambahkan CSRF Exempt untuk endpoint Flutter (POST login/register/create) hal ini dikarenakan agar POST dari Flutter tidak ditolak oleh browser. Selai itu, Flutter tidak memiliki CSRF token seperti browser sebagai gantinya adalah menggunakan @csrf_exempt
    - Menambahkan 10.0.2.2 pada ALLOWED_HOSTS agara emulator bisa mengakses server laptop

    10.0.2.2 perlu ditambahkan pada ALLOWED_HOSTS karena Flutter dan Django adalah dua aplikasi yang berjalan di lingkungan berbeda dan Django hanya menerima request dari host yang ada di ALLOWED_HOSTS, oleh karena itu, harus menambahkan ALLOWED_HOSTS = [...., "10.0.2.2"], alamat ini merupakan cara khusus emulator Android untuk mengakses localhost pada komputer host. Apabila tidak ditambahkan, maka Django akan langsung menolak request dari Flutter dan memghasilkan error DisallowedHost: Invalid HTTP_HOST header

    CORS (Cross-Origin Resource Sharing) perlu diaktifkan karena Flutter dan Django berada pada origin yang berbeda, sehingga browser maupun framework jaringan akan memblokir request lintas domain secara otomatis. Dengan mengaktifkan CORS menggunakan CORS_ALLOW_ALL_ORIGINS dan CORS_ALLOW_CREDENTIALS, Django mengizinkan aplikasi Flutter melakukan request GET/POST tanpa diblokir oleh mekanisme keamanan CORS. Jika konfigurasi ini tidak diterapkan, Flutter akan menerima error “No 'Access-Control-Allow-Origin' header is present” dan komunikasi dengan Django tidak akan berhasil.

    Pada fitur yang berkaitan dengan autentikasi akun pengguna, seperti login ke Django menggunakan session cookie dari CookieRequest, perlu dilakukan penyesuaian konfigurasi pada Django karena pengaturan default cookie Django tidak mengizinkan penggunaan cookie secara cross-site. Secara default, Django menetapkan SameSite=Lax, yang berarti cookie tidak akan dikirim ketika request berasal dari aplikasi lain. Dengan mengatur SameSite/cookie, Django akan mengizinkan cookie untuk dapat digunakan secara cross origin sekaligus tetap menjaga keamanan melalui penggunaan cookie yang terenkripsi dan hanya dikirim melalui HTTPS. Jika konfigurasi ini tidak dilakukan, maka setiap request dari Flutter tidak akan membawa session cookie, sehingga Django selalu menganggap pengguna sebagai AnonymousUser akibatnya, fitur yang membutuhkan auntentikasi tidak dapat digunakan oleh user meskipun user berhasil login

    Kita  juga perlu menambahkan izin akses internet di android karena secara default android tidak mengizinkan aplikasi mengakses intenet sehingga apabila perizinan tersebut tidak dilakukan dengan benar aplikasi Flutter tidak dapat membuka koneksi jaringan apa pun yang mengakibatkan tidak dapat terhubung dengan Django dan akan muncul error seperti “SocketException: Failed host lookup” ak
    
5. Berikut ini adalah mekasnisme atau alur pengiriman data higga dapat ditampilkan pada Flutter:
    - User mengisi form atau menginput data pada Flutter
    - Setelah user memasukkan input, Flutter akan membuat request berupa HTTP (POST, GET, DELETE, etc) atau CookieRequest apabila suatu fitur membutuhkan login yang akan dikirimkan ke Django
    - Django menerima  request tersebut dan akan mengolah dan memvalidasi data lalu akan menyimpannya ke dalam databasee
    - Setelah itu, Django akan mengirim respons balik ke Flutter dalam bentuk JSON
    - Flutter menerima JSON yang dikirimkan dari Django dan apabila datanya kompleks, maka Flutter akan membuat model untuk memudahkan penggunaan data di UI
    - Lalu, Flutter akan memperbarui state UI dan UI akan secara otomatis di-rebuild sehingga user dapat melihat output yang diinginkan

6. Sebelum login, user yang tidak memiliki akun akan melakukan registrasi terlebih dahulu lalu dilanjutkan login dan logout, berikut ini adalah alurnya:
    - User membuat akun terlebih dahulu (registrasi)
        1. User mengisi form register di Flutter
        2. Setelah selesai mengisi form tsb, Flutter melakukan request dengan mengirimkan data menggunakan HTTP POST ke Django 
        3. Django menerima request tersebut dan melakukan validasi password serta username pada views.py, jika datanya valid maka Django akan membuat user baru
        4. Setelah itu, Django akan mengirim respon dalam bentuk JSON ke flutter yang menyatakan bahwa user berhasil terdaftar
        5. Flutter menerima data tersebut dan UI Flutter dapat menampilkan pesan, seperti "Registrasi berhasil"
    - Setelah berhasi membuat akun, user melakukan input username dan password di halaman login Flutter
    - Data input tesebut akan dikirimkan ke Django menggunakan CookieRequest (CookieRequest mengirim POST ke Django)
    - Django menerima request tersebut dan akan melakukan validasi kredensial. Apabila data yang dikirimkan benar, maka Django akan membuat session baru, menyimpan session di database, dan mengirimkan cookie session via header
    - Django akan mengirimkan cookie session ke Flutter
    - Flutter menerima cookie session tersebut dan menganggap bahwa user berhasil login dan akan membuka halaman baru (ex: home)
    - Karena user berhasil login, maka user dapat mengakses fitur yang membutuhkan login, misalnya logout
    - Saat user memencet tombol logout, Flutter mengirim request logout menggunakan CookieRequest yang berisi cookie session ke Django
    - Django menerima request tersebut dan akan menghapus session dari database serta mengirim cookie kosong ke Flutter
    - Flutter menerimma respons dari Django dan CookieRequest akan otomatis menghaspus cookie session yang disimpan di dalam Flutter sehingga status autentikasi user sudah tidak valid lagi
    - Setelah session hilang, seluruh request yang membutuhkan login tidak dapat diakses lagi oleh user sehingga Flutter akan mengarahkan user ke halaman Login atau halaman yang tidak membutuhkan login

7. Berikut ini adalahh cara saya mengimplementasikan checklist secara step-by-tep:
    - Membuka proyek Django dan menambahkan modul autentikasi
    - Melakukan routing pada proyek utama untuk memasukkan url yang berkaitan dengan modul authentication agar bisa diakses
    - Pada modul autentikasi, saya membuat fungsi untuk melakukan login, logout, dan register
    - Setelah membuat fungsi2 tsb di authentication/viesws.py saya membuat file urls.py di authentication dan melakukan routing untuk mengarahkan url dengan fungsi yang sudah didefinisikan
    - Setelah itu, saya melakukan integrasi antara flutter dan django, seperti menambahkan "10.0.2.2" pada ALLOWED_HOST, mengaktifkan CORS, mengatur samesite dan cookieRequest, dan mengatur perizinan pada android
    - Selanjutnya, saya mengintegrasikan autentiksi yang sudah dibuat pada Django ke Flutter dengan menambahkan CookieRequest request = CookieRequest(); pada file login.dart, memperbaiki file register.dart, dan menambahkan CookieRequest(); pada beberapa file berkaitan dengan beberapa fitur yang hanya bisa diakses ketika user sudah login 
    - Membuat folder baru untuk model pada lib, lalu membuat model pada Flutter yang sudah dibuat di Django dengan menggunakan Quicktype
    - Menambahkan dependensi HTTP pada Flutter agar bisa melakukan fungsi POST, DELETE dll seperti halnya yang dilakukan oleh Django
    - Pada proyek Django di main/views.py, saya membuat beberapa fungsi yang berkaitan dengan flutter, seperti add_product_flutter, my_product_flutter, dan proxy_image lalu melakukan url routing pada main/urls.py
    - Membuat file untuk menampilkan UI card product, detail product, file untuk menampilkan seluruh produk, dan file untuk menampilkan 'My Product'
    -  Setelah itu, melakukan routing di Flutter menggunakan MatriealPageRoute agar saat cardnya dipencet bida redirect ke halaman yang sesuai

</details>