# :zap: **Jarkom-Modul-3-ITB01-2022** :zap:

| Nama                               | NRP            |
|------------------------------------|----------------|
| 	:adult: Rafael Nixon              | 05311940000025 |
| 	:adult: Fairuz Azka Maulana       | 5027201017     |
| 	:adult: Muhammad Firdho Kustiawan | 5027201005     | 
<br/>


## :large_blue_circle: **Topologi Jaringan** :large_blue_circle: 
<img src="./img/topologi.png">
<br>

## :large_blue_circle: **Soal 1 dan Soal 2** :large_blue_circle: 
Loid bersama Franky berencana membuat peta tersebut dengan kriteria WISE sebagai DNS Server, Westalis sebagai DHCP Server, Berlint sebagai Proxy Server (1), dan Ostania sebagai DHCP Relay (2). Loid dan Franky menyusun peta tersebut dengan hati-hati dan teliti.

### :triangular_flag_on_post: **Jawaban:**
Kami melakukan konfigurasi pada setiap node yang ada pada topologi tersebut.

### :rocket: **Ostania**
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

### :rocket: **WISE**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.2.2
      netmask 255.255.255.0
      gateway 10.45.2.1
```

### :rocket: **SSS**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.1.2
      netmask 255.255.255.0
      gateway 10.45.1.1
```

### :rocket: **Garden**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.1.3
      netmask 255.255.255.0
      gateway 10.45.1.1
```

### :rocket: **Berlint**
```JavaScript
auto eth0
iface eth0 inet static
      address 10.45.3.2
      netmask 255.255.255.0
      gateway 10.45.3.1
```

### :rocket: **Eden**
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

### :white_check_mark: **Testing WISE**
<img src="./img/Nomor1_buktiPingWISE.png">

### :white_check_mark: **Testing SSS**
<img src="./img/Nomor1_buktiPingSSS.png">

### :white_check_mark: **Testing Garden**
<img src="./img/Nomor1_buktiPingGarden.png">

### :white_check_mark: **Testing Berlint**
<img src="./img/Nomor1_buktiPingBerlint.png">

### :white_check_mark: **Testing Eden**
<img src="./img/Nomor1_buktiPingEden.png">
<br>




## :large_blue_circle: **Soal 3** :large_blue_circle: 
Semua client yang ada HARUS menggunakan konfigurasi IP dari DHCP Server.
Client yang melalui Switch1 mendapatkan range IP dari [prefix IP].1.50 - [prefix IP].1.88 dan [prefix IP].1.120 - [prefix IP].1.155

### :triangular_flag_on_post: **Jawaban:**

### :rocket: **Ostania**


### :rocket: **Westalis**




## :large_blue_circle: **Soal 4** :large_blue_circle: 
Client yang melalui Switch3 mendapatkan range IP dari [prefix IP].3.10 - [prefix IP].3.30 dan [prefix IP].3.60 - [prefix IP].3.85

### :triangular_flag_on_post: **Jawaban:**

### :rocket: **Westalis**




## :large_blue_circle: **Soal 5** :large_blue_circle: 
Client mendapatkan DNS dari WISE dan client dapat terhubung dengan internet melalui DNS tersebut.

### :triangular_flag_on_post: **Jawaban:**

### :rocket: **WISE**

### :rocket: **Testing di SSS, Garden, NewstonCastle, dan KemonoPark**

<!-- GAMBAR -->
<img src="">
<br>




## :large_blue_circle: **Soal 6** :large_blue_circle: 
Lama waktu DHCP server meminjamkan alamat IP kepada Client yang melalui Switch1 selama 5 menit sedangkan pada client yang melalui Switch3 selama 10 menit. Dengan waktu maksimal yang dialokasikan untuk peminjaman alamat IP selama 115 menit.

### :triangular_flag_on_post: **Jawaban:**

### :rocket: **Westalis**





## :large_blue_circle: **Soal 7** :large_blue_circle: 
Loid dan Franky berencana menjadikan Eden sebagai server untuk pertukaran informasi dengan alamat IP yang tetap dengan IP [prefix IP].3.13

### :triangular_flag_on_post: **Jawaban:**

### :rocket: **Westalis**

### :rocket: **Eden**


### :rocket: **Testing di Eden**
<img src="">




## :large_blue_circle: **Soal 8** :large_blue_circle: 
blabla

### :triangular_flag_on_post: **Jawaban:**
<br>

### :rocket: **NODE APA**





## :large_blue_circle: **Soal 9** :large_blue_circle: 
blabla

### :triangular_flag_on_post: **Jawaban:**
<br>

### :rocket: **NODE APA**





## :large_blue_circle: **Soal 10** :large_blue_circle: 
blabla

### :triangular_flag_on_post: **Jawaban:**
<br>

### :rocket: **Eden**





## :large_blue_circle: **Soal 11** :large_blue_circle: 
blabla

### :triangular_flag_on_post: **Jawaban:**
<br>

### :rocket: **NODE APA**






## :large_blue_circle: **Soal 12** :large_blue_circle: 
blabla

### :triangular_flag_on_post: **Jawaban:**
<br>

### :rocket: **NODE APA**


