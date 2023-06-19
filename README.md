# UASPPW1_22-500051-SV-21386_INTEGRATED-CIVILS

## Adiel Boanerge Gananputra
## Penjelasan Umum:
Website ini digunakan untuk tempat pengaduan pelanggaran yang dilakukan oleh masyarakat oleh masyarakat suatu negara. Website ini terinspirasi dari Social Credit Points yang diterapkan di China, dimana setiap masyarakat memiliki social rating yang dapat berdampak ke kehidupan bernegara. Klien dalam hal ini berupa pemerintahan. Website ini ditujukan untuk digunakan oleh masyarakat umum. Form yang dikirim seharusnya di cek oleh pemerintah secara otomatis dan di masukkan ke database utama pemerintah.

Kebutuhan yang diminta klien adalah perlunya sebuah website yang dapat meningkatkan atau membuat social kredit point pelapor naik dengan cara mengirimkan atau mengadukan kesalahan orang lain dan klien juga butuh cara untuk melihat social credit point seseorang karena social kredit point dapat mempengaruhi hubungan status sosial yang ditetapkan negara tersebut. Sehingga fitur utama yang dilakukan adalah laman untuk mengadu dan fitur pencarian untuk mendapatkan social credit point. 

Website ini mengcover permasalahan kebutuhan klien untuk mencari database social credit point dan pengaduan. Pengaduan ini akan terhubung ke database citizen dan mengurangi social credit point secara otomatis. Pencarian social credit point seseorang dilakukan dengan mencari berdasarkan keyword. Pencarian akan mencari di nama dan nomor identitas penduduk.

Website ini juga memberikan fitur untuk menerima pesan. (belum terintegrasi dengan database).
Website ini juga memberikan kesempatan untuk vendor berikutnya dalam melakukan penambahan fitur. Data base yang digunakan juga cukup lengkap meliputi 11 tabel meliputi citizen, pekerjaan, akses ke fasilitas publik, tempat tinggal, rekam jejak kejahatan, kategori tindak kejahatan, dll. Tabel yang digunakan di website ini adalah tabel citizen, crime, dan crime report.

## Bagaimana website memenuhi 4 requirement dasar (kriteria penilaian)?
### Desain
- Warna
Desain website ini menggunakan tema partai atau ciri khas dari negara klien, yaitu merah. Warna merah dikombinasikan dengan warna hitam dan putih. Warna hitam ini melambangkan bahwa pemerintah(klien) tegas dalam membuat atau melakukan hal ini. Warna putih melambangkan bahwa website ini digunakan untuk kebaikan bersama (tujuan pemerintah).
"
    :root {
        --darkRed: #6b0505;
        --white: #f0f0f0;
        --black: #110101;
        --brown: #8b1e1e;
        --grey: #272626;
        --whitegrey: #c3bfbf;
    }
"
diatas adalah beberapa warna utama dari website.

- Logo
Logo website ini di desain dengan menggabungkan huruf I dan C. I yang mempresentasikan Integrated yang berarti keterhubungan dan C mempresentasikan Civils yang berarti penduduk. Integrated Civils memiliki arti bahwa ini adalah sebuah interkoneksi penghubungan data-data dari penduduk.
"
                <svg version="1.1" id="logo_svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                    <path id="logo_path" d="M498.3,51.7v396.6c-19.4,3.5-39.6,5.4-60.4,5.4c-90.8,0-170.9-35.4-218.4-89.2C265,346.4,297.2,302,297.2,250
                        c0-16.8-3.4-32.8-9.5-47.4c-43.4,2.2-83.4,17.7-113.7,47.4s-46.8,69.2-50,112.6l0,0v137H1.7V0.5H124v137
                        C81,156.7,50.9,199.8,50.9,250c0,15.1,2.7,29.6,7.8,42.9l160.9-157.3c47.5-53.8,127.5-89.3,218.3-89.3
                        C458.7,46.4,478.9,48.2,498.3,51.7z"/>
                    <path id="logo_path" display="none" d="M123.7-204.5c0-31.8,19-59.2,46.4-71.4v-86.9H92.5v316.6h77.6v-86.9C142.8-145.3,123.7-172.6,123.7-204.5z"/>
                    <path id="logo_path" display="none" d="M369.2-333.7c-57.6,0-108.4,22.4-138.5,56.6c28.9,11.5,49.3,39.6,49.3,72.6s-20.4,61.1-49.3,72.6
                        c30.1,34.2,80.9,56.6,138.5,56.6c13.2,0,26-1.2,38.3-3.4v-251.6C395.2-332.5,382.4-333.7,369.2-333.7z"/>
                    <path id="logo_path" display="none" d="M274-234.5c-3.7-8.9-9.1-17.2-16.2-24.5c-7.9-8.1-17.2-14.1-27-18l-102.1,99.8c3.7,10,9.5,19.3,17.4,27.4
                        c7.1,7.3,15.3,12.9,24.1,16.8c2-27.5,12.4-52.6,31.7-71.5S246.4-233.1,274-234.5z"/>
"
Logo tersebut menggunakan svg agar dapat di resize tanpa mengurangi kualitas gambar.

- Style
Style website ini menggunakan rounded rectangle yang dimaksudkan bahwa klien tidak berusaha untuk menyakiti. Rounded Rectangle memberikan kesan lebih lembut daripada rectangle biasa. Beberapa desain untuk penampilan social credit point digunakan sebuah class dari css yang akan mewarnai div tersebut. Pewarnaan itu dilakukan agar user dapat melihat social credit point tersebut masuk ke dalam kategori apa.
Berikut contoh nya:
"
    searchQuery.php:
        ...
        $status = array(
                1 => "good",
                2 => "medium",
                3 => "bad"
            );

            foreach ($result as $row) {
                $index = $row['social_credit_point'];
                if ($index < 400) {
                    $index = $status[3];
                } elseif ($index < 700){
                    $index = $status[2];
                } else {
                    $index = $status[1];
                }

                ...
            }
    
    database.css :
        ...
        .good {
            background-color: rgba(26, 129, 26, 0.8);
            color: var(--white);
            font-weight: 600;
        }
        
        .medium {
            background-color: rgba(165, 107, 20, 0.8);
            color: var(--white);
            font-weight: 600;
        }

        .bad {
            background-color: rgba(189, 39, 39, 0.8);
            color: var(--white);
            font-weight: 600;
        }
"
kelas good, medium, bad hanya memiliki beda di background color saja. Penggunaan akan dilakukan di searchQuery, ketika nilai social credit point lebih dari 700 maka akan menggunakan warna good.

### Responsive
Website ini sudah dilakukan uji hingga lebar window mencapai 400 dan semua fitur terlihat ok. Hal hal yang diperlukan untuk responsive ini adalah mengubah navbar ketika lebar kurang dari 880. Ketika navbar kurang dari ketentuan terbut maka akan menggunakan navbar model untuk device yang berupa drop down. Jika lebih maka akan menggunakan navbar untuk desktop yang menunya dapat langsung terlihat.
"
 navigationBar.js:

    function handleMediaQuery(mq) {
        if (mq.matches) {
            // below 880px width
            document.getElementById('navbarContainer').innerHTML = `
            <div class="ICNavbar sticky-top">
                <nav class="navbar navbar-expand" id="my_navbar">
                <div class="nav navbar-nav">
                    <a class="navbar-brand logoIC" href="#">
                    <div id="logoContainer">
                        <svg version="1.1" id="logo_svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                            <path id="logo_path" d="M498.3,51.7v396.6c-19.4,3.5-39.6,5.4-60.4,5.4c-90.8,0-170.9-35.4-218.4-89.2C265,346.4,297.2,302,297.2,250
                                c0-16.8-3.4-32.8-9.5-47.4c-43.4,2.2-83.4,17.7-113.7,47.4s-46.8,69.2-50,112.6l0,0v137H1.7V0.5H124v137
                                C81,156.7,50.9,199.8,50.9,250c0,15.1,2.7,29.6,7.8,42.9l160.9-157.3c47.5-53.8,127.5-89.3,218.3-89.3
                                C458.7,46.4,478.9,48.2,498.3,51.7z"/>
                            <path id="logo_path" display="none" d="M123.7-204.5c0-31.8,19-59.2,46.4-71.4v-86.9H92.5v316.6h77.6v-86.9C142.8-145.3,123.7-172.6,123.7-204.5z"/>
                            <path id="logo_path" display="none" d="M369.2-333.7c-57.6,0-108.4,22.4-138.5,56.6c28.9,11.5,49.3,39.6,49.3,72.6s-20.4,61.1-49.3,72.6
                                c30.1,34.2,80.9,56.6,138.5,56.6c13.2,0,26-1.2,38.3-3.4v-251.6C395.2-332.5,382.4-333.7,369.2-333.7z"/>
                            <path id="logo_path" display="none" d="M274-234.5c-3.7-8.9-9.1-17.2-16.2-24.5c-7.9-8.1-17.2-14.1-27-18l-102.1,99.8c3.7,10,9.5,19.3,17.4,27.4
                                c7.1,7.3,15.3,12.9,24.1,16.8c2-27.5,12.4-52.6,31.7-71.5S246.4-233.1,274-234.5z"/>
                        </svg>
                    </div>
                    <div class="TITLES" id="TITLES"></div>
                    </a>
                </div>
                <div class="nav navbar-nav costumMenu" id="navMenu">
                    <div class="btn-group">
                    <button type="button" class="btn btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="material-symbols-outlined" id="navMenu">
                        menu
                        </span>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="index.php" id="home">Home</a>
                        <a class="dropdown-item" href="snitch.php" id="snitch">Snitch</a>
                        <a class="dropdown-item" href="database.php" id="database">Database</a>
                        <a class="dropdown-item" href="myAccount.html" id="myaccount">My Account</a>
                        <a class="dropdown-item" href="myMessages.html" id="messages">Messages</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" onclick="logOutSystem();">Log Out</a>
                    </div>
                    </div>
                </div>
                </nav>
            </div>
            `;
        } else {
            // above 880px width
            document.getElementById('navbarContainer').innerHTML = `
            <div class="ICNavbar sticky-top">
                <nav class="navbar navbar-expand" id="my_navbar">
                <div class="nav navbar-nav">
                    <a class="navbar-brand logoIC" href="#">
                    <div id="logoContainer">
                        <svg version="1.1" id="logo_svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                            <path id="logo_path" d="M498.3,51.7v396.6c-19.4,3.5-39.6,5.4-60.4,5.4c-90.8,0-170.9-35.4-218.4-89.2C265,346.4,297.2,302,297.2,250
                                c0-16.8-3.4-32.8-9.5-47.4c-43.4,2.2-83.4,17.7-113.7,47.4s-46.8,69.2-50,112.6l0,0v137H1.7V0.5H124v137
                                C81,156.7,50.9,199.8,50.9,250c0,15.1,2.7,29.6,7.8,42.9l160.9-157.3c47.5-53.8,127.5-89.3,218.3-89.3
                                C458.7,46.4,478.9,48.2,498.3,51.7z"/>
                            <path id="logo_path" display="none" d="M123.7-204.5c0-31.8,19-59.2,46.4-71.4v-86.9H92.5v316.6h77.6v-86.9C142.8-145.3,123.7-172.6,123.7-204.5z"/>
                            <path id="logo_path" display="none" d="M369.2-333.7c-57.6,0-108.4,22.4-138.5,56.6c28.9,11.5,49.3,39.6,49.3,72.6s-20.4,61.1-49.3,72.6
                                c30.1,34.2,80.9,56.6,138.5,56.6c13.2,0,26-1.2,38.3-3.4v-251.6C395.2-332.5,382.4-333.7,369.2-333.7z"/>
                            <path id="logo_path" display="none" d="M274-234.5c-3.7-8.9-9.1-17.2-16.2-24.5c-7.9-8.1-17.2-14.1-27-18l-102.1,99.8c3.7,10,9.5,19.3,17.4,27.4
                                c7.1,7.3,15.3,12.9,24.1,16.8c2-27.5,12.4-52.6,31.7-71.5S246.4-233.1,274-234.5z"/>
                        </svg>
                    </div>
                    <div class="TITLES" id="TITLES"></div>
                    </a>
                </div>
                <div class="nav navbar-nav costumMenu" id="navMenu">
                    <a class="nav-item nav-link" href="index.php" id="home">Home</a>
                    <a class="nav-item nav-link" href="snitch.php" id="snitch">Snitch</a>
                    <a class="nav-item nav-link" href="database.php" id="database">Database</a>
                    <div class="btn-group">
                    <button type="button" class="btn btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="material-symbols-outlined" id="navMenu">
                        account_circle
                        </span>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="myAccount.html" id="myaccount">My Account</a>
                        <a class="dropdown-item" href="myMessages.html" id="messages">Messages</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" onclick="logOutSystem();">Log Out</a>
                    </div>
                    </div>
                </div>
                </nav>
            </div>
            `;
        }
    }
"
cara kerja js tersebut adalah dengan mencocokkan dengan ukuran window "window.matchMedia("(max-width: 880px)");".
Ketika tidak cocok, maka akan menggunakan navbar khusus untuk device lebih besar dari 880px.

Responsive lainnya adalah perihal ukuran judul. Hal ini menggunakan media Query dengan kondisi tertentu.
"
    @media (min-width: 770px) {
        .s1 .title{
            text-align: center;
            color: var(--white);
            
        }
        
        .s1 .title h1{
            font-size: 80pt;
            font-weight: 900;
        
            text-shadow: 2px 2px 100px var(--black);
            box-shadow: 2rem;
        }
        
        .s1 .title p{
            font-size: 30pt;
            font-weight: 500;
        
            text-shadow: 2px 2px 100px var(--black);
        }

        .s1 .cover button{
            color: var(--white);
            font-size: 20pt;
            font-weight: 500;
        
            background-color: var(--darkRed);
            border-radius: 30px;
            padding: 10px 50px;
            border-width: 0;
            border: 0;
        }
        
        .s1 .cover button:hover{
            color: var(--darkRed);
            font-size: 20pt;
        
            background-color: var(--white);
            border-radius: 30px;
            padding: 10px 50px;
            border-width: 0;
            transition: 0.4s;
        }

    }

    @media (max-width: 770px) {
        .s1 .title{
            text-align: center;
            color: var(--white);
            
        }
        
        .s1 .title h1{
            font-size: 60pt;
            font-weight: 700;
        
            text-shadow: 2px 2px 100px var(--black);
            box-shadow: 2rem;
        }
        
        .s1 .title p{
            font-size: 20pt;
            font-weight: 500;
        
            text-shadow: 2px 2px 100px var(--black);
        }

        .s1 .cover button{
            color: var(--white);
            font-size: 20pt;
            font-weight: 500;
        
            background-color: var(--darkRed);
            border-radius: 30px;
            padding: 10px 50px;
            border-width: 0;
            border: 0;
        }
        
        .s1 .cover button:hover{
            color: var(--darkRed);
            font-size: 20pt;
        
            background-color: var(--white);
            border-radius: 30px;
            padding: 10px 50px;
            border-width: 0;
            transition: 0.4s;
        }
    }
"

### Direct Feedback
Website ini memiliki beberapa direct feedback seperti jika mengklik beberapa icon tertentu, menu navbar yang dapat menunjukan posisi sekarang ada di halaman apa, terdapat search bar yang dapat digunakan untuk pencarian seseorang, step step yang dapat dibuka ataupun ditutup, dan beberapa animasi hover untuk menuju link tertentu atau menjalankan script tertentu.
"
    ...
    <div class="card">
        <div class="card-body" onclick="toggleDescription(1)">
            <h5 class="card-title" >Step 1</h5>
            <p class="card-text step-description" id="description-1">
                Fill in the "Respondent Name" and "Respondent ID" fields to provide your own information as the reporter.</p>
        </div>
    </div>
    ...
"
contoh cuplikan diatas adalah tombol untuk membuka tutup step penggunaan form. Jika user menekan div tersebut atau kotak step tersebut, maka akan menjalankan sebuah fungsi yang akan mengedit style dari paragraf ber id description-x menjadi display block, yang awalnya adalah display none. Jika user menekan lagi maka proses akan dibalik.

### Konten Dinamis
konten dinamis ini menggunakan data dari database. Dalam website ini tabel citizen digunakan sebagai konten dinamis di hasil search query. Jika user mencari dengan keyword * maka akan menampilkan seluruh citizen yang pernah melakukan tindak kriminal. Konten konten tersebut dibuat secara dinamis menggunakan looping di php.
"
    <?php 
        include "conn.php";

        $keyword = $_GET['keyword'];

        if ($keyword != "*") {
            $complement = "where name_citizen like '%". $keyword ."%' or id_citizen like '%". $keyword ."%'";
        } else{
            $complement = "";
        }

        $sql = "select name_citizen, id_citizen, gender_citizen, social_credit_point from citizen ". $complement;
        $result = mysqli_query($conn, $sql);

        $status = array(
            1 => "good",
            2 => "medium",
            3 => "bad"
        );

        foreach ($result as $row) {
            $index = $row['social_credit_point'];
            if ($index < 400) {
                $index = $status[3];
            } elseif ($index < 700){
                $index = $status[2];
            } else {
                $index = $status[1];
            }

            try {
                $scp = intval($row['social_credit_point']);
            } catch (\Throwable $th) {
                $scp = 0;
            }

            
            echo '
                <div class="card">
                    <div class="row no-gutters">
                        <div class="col-md-7">
                            <div class="card-body">
                                <h5 class="card-title">'. $row['name_citizen'] .'</h5>
                                <p class="card-text">'. $row['id_citizen'] .'</p>
                                <p class="card-text">'. $row['gender_citizen'] .'</p>
                            </div>
                        </div>
                        <div class="col-md-5 rightColor ' . $index . '">
                            <div class="card-body">
                                <p class="card-point"><span class="status-text">'. $scp .'</span> <small>pts</small></p>
                            </div>
                        </div>
                    </div>
                </div>
            ';
        }

        mysqli_close($conn);
    ?>
"



