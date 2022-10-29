# :zap: **Jarkom-Modul-2-ITB01-2022** :zap:

| Nama                               | NRP            |
|------------------------------------|----------------|
| 	:adult: Rafael Nixon              | 05311940000025 |
| 	:adult: Fairuz Azka Maulana       | 5027201017     |
| 	:adult: Muhammad Firdho Kustiawan | 5027201005     | 
<br/>


## :large_blue_circle: **Topologi Jaringan** :large_blue_circle: 
<img src="./img/topologi.png">
<br>

## :large_blue_circle: **Soal 1** :large_blue_circle: 
WISE akan dijadikan sebagai DNS Master, Berlint akan dijadikan DNS Slave, dan Eden akan digunakan sebagai Web Server. Terdapat 2 Client yaitu SSS, dan Garden. Semua node terhubung pada router Ostania, sehingga dapat mengakses internet (1).

### :triangular_flag_on_post: **Jawaban:**
Kami melakukan konfigurasi pada setiap node yang ada pada topologi tersebut.

:rocket: **Ostania**
```JavaScript
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
      address 10.45.1.1
      netmask 255.255.255.0

auto eth2
iface eth2 inet static
      address 10.45.2.1
      netmask 255.255.255.0

auto eth3
iface eth3 inet static
      address 10.45.3.1
      netmask 255.255.255.0
```

:rocket: **WISE**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.2.2
      netmask 255.255.255.0
      gateway 10.45.2.1
```

:rocket: **SSS**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.1.2
      netmask 255.255.255.0
      gateway 10.45.1.1
```

:rocket: **Garden**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.1.3
      netmask 255.255.255.0
      gateway 10.45.1.1
```

:rocket: **Berlint**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.3.2
      netmask 255.255.255.0
      gateway 10.45.3.1
```

:rocket: **Eden**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.3.3
      netmask 255.255.255.0
      gateway 10.45.3.1
```

Kemudian kami manjalankan command berikut di Ostania
```JavaScript
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.45.0.0/16
```

Setelah itu kami mencari IP DNS dari Ostania dengan command `cat /etc/resolv.conf`
```JavaScript
nameserver 192.168.122.1
```

Memasukkan command `echo nameserver 192.168.122.1 > /etc/resolv.conf` di setiap node untuk testing secara umum apakah setiap node sudah terhubung dengan google

:white_check_mark: **Testing WISE**
<img src="./img/Nomor1_buktiPingWISE.png">
:white_check_mark: **Testing SSS**
<img src="./img/Nomor1_buktiPingSSS.png">
:white_check_mark: **Testing Garden**
<img src="./img/Nomor1_buktiPingGarden.png">
:white_check_mark: **Testing Berlint**
<img src="./img/Nomor1_buktiPingBerlint.png">
:white_check_mark: **Testing Eden**
<img src="./img/Nomor1_buktiPingEden.png">
<br>

## :large_blue_circle: **Soal 2** :large_blue_circle: 
Untuk mempermudah mendapatkan informasi mengenai misi dari Handler, bantulah Loid membuat website utama dengan akses wise.yyy.com dengan alias www.wise.yyy.com pada folder wise (2).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 3** :large_blue_circle: 
Setelah itu ia juga ingin membuat subdomain eden.wise.yyy.com dengan alias www.eden.wise.yyy.com yang diatur DNS-nya di WISE dan mengarah ke Eden (3).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 4** :large_blue_circle: 
Buat juga reverse domain untuk domain utama (4).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 5** :large_blue_circle: 
Agar dapat tetap dihubungi jika server WISE bermasalah, buatlah juga Berlint sebagai DNS Slave untuk domain utama (5).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 6** :large_blue_circle: 
Karena banyak informasi dari Handler, buatlah subdomain yang khusus untuk operation yaitu operation.wise.yyy.com dengan alias www.operation.wise.yyy.com yang didelegasikan dari WISE ke Berlint dengan IP menuju ke Eden dalam folder operation (6).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 7** :large_blue_circle: 
Untuk informasi yang lebih spesifik mengenai Operation Strix, buatlah subdomain melalui Berlint dengan akses strix.operation.wise.yyy.com dengan alias www.strix.operation.wise.yyy.com yang mengarah ke Eden (7).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 8** :large_blue_circle: 
Setelah melakukan konfigurasi server, maka dilakukan konfigurasi Webserver. Pertama dengan webserver www.wise.yyy.com. Pertama, Loid membutuhkan webserver dengan DocumentRoot pada /var/www/wise.yyy.com (8).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 9** :large_blue_circle: 
Setelah itu, Loid juga membutuhkan agar url www.wise.yyy.com/index.php/home dapat menjadi menjadi www.wise.yyy.com/home (9).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 10** :large_blue_circle: 
Setelah itu, pada subdomain www.eden.wise.yyy.com, Loid membutuhkan penyimpanan aset yang memiliki DocumentRoot pada /var/www/eden.wise.yyy.com (10).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 11** :large_blue_circle: 
Akan tetapi, pada folder /public, Loid ingin hanya dapat melakukan directory listing saja (11).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 12** :large_blue_circle: 
Tidak hanya itu, Loid juga ingin menyiapkan error file 404.html pada folder /error untuk mengganti error kode pada apache (12).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 13** :large_blue_circle: 
Loid juga meminta Franky untuk dibuatkan konfigurasi virtual host. Virtual host ini bertujuan untuk dapat mengakses file asset www.eden.wise.yyy.com/public/js menjadi www.eden.wise.yyy.com/js (13).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 14** :large_blue_circle: 
Loid meminta agar www.strix.operation.wise.yyy.com hanya bisa diakses dengan port 15000 dan port 15500 (14)

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 15** :large_blue_circle: 
Dengan autentikasi username Twilight dan password opStrix dan file di /var/www/strix.operation.wise.yyy (15)

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 16** :large_blue_circle: 
Dan setiap kali mengakses IP Eden akan dialihkan secara otomatis ke www.wise.yyy.com (16).

### :triangular_flag_on_post: **Jawaban:**
<br>

## :large_blue_circle: **Soal 17** :large_blue_circle: 
Karena website www.eden.wise.yyy.com semakin banyak pengunjung dan banyak modifikasi sehingga banyak gambar-gambar yang random, maka Loid ingin mengubah request gambar yang memiliki substring “eden” akan diarahkan menuju eden.png. Bantulah Agent Twilight dan Organisasi WISE menjaga perdamaian! (17)

### :triangular_flag_on_post: **Jawaban:**
<br>