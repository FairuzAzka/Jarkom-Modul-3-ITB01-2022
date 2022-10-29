echo "nameserver 192.168.122.1" > /etc/resolv.conf
apt-get update

# NOMOR 8

apt-get install apache2 -y
service apache2 start
apt-get install php -y
apt-get install libapache2-mod-php7.0 -y
service apache2 
apt-get install ca-certificates openssl -y
apt-get install git -y
apt-get install unzip -y
apt-get install wget -y
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S0XhL9ViYN7TyCj2W66BNEXQD2AAAw2e' -O /root/wise.zip
unzip /root/wise.zip -d /root

echo '
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/wise.itb01.com
        ServerName wise.itb01.com
        ServerAlias www.wise.itb01.com
</VirtualHost>
' > /etc/apache2/sites-available/wise.itb01.com.conf

a2ensite wise.itb01.com
mkdir /var/www/wise.itb01.com
cp -r /root/wise/. /var/www/wise.itb01.com
service apache2 restart

# NOMOR 9

a2enmod rewrite
service apache2 restart
echo "
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule (.*) /index.php/\$1 [L]" > /var/www/wise.itb01.com/.htaccess
echo "
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/wise.itb01.com
        ServerName wise.itb01.com
        ServerAlias www.wise.itb01.com

        Alias "/home" "/var/www/wise.itb01.com/index.php/home"

        <Directory /var/www/wise.itb01.com>
                Options +FollowSymLinks -Multiviews
                AllowOverride All
        </Directory>
</VirtualHost>" > /etc/apache2/sites-available/wise.itb01.com.conf

service apache2 restart

# NOMOR 10

echo '
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/eden.wise.itb01.com
        ServerName eden.wise.itb01.com
        ServerAlias www.eden.wise.itb01.com

        <Directory /var/www/wise.itb01.com>
                Options +FollowSymLinks -Multiviews
                AllowOverride All
        </Directory>

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>' > /etc/apache2/sites-available/eden.wise.itb01.com.conf

a2ensite eden.wise.itb01.com.conf
service apache2 reload
mkdir /var/www/eden.wise.itb01.com  

wget --no-check-certificate 'https://docs.google.com/uc?export=dowload&id=1q9g6nM85bW5T9f5yoyXtDqonUKKCHOTV' -O /root/eden.wise.zip

unzip /root/eden.wise.zip -d /root
cp -r /root/eden.wise/. /var/www/eden.wise.itb01.com
service apache2 restart

# NOMOR 11

echo '
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/eden.wise.itb01.com
        ServerName eden.wise.itb01.com
        ServerAlias www.eden.wise.itb01.com

        <Directory /var/www/eden.wise.itb01.com/public>
                Options +Indexes
        </Directory>


        <Directory /var/www/wise.itb01.com>
                Options +FollowSymLinks -Multiviews
                AllowOverride All
        </Directory>
</VirtualHost>' > /etc/apache2/sites-available/eden.wise.itb01.com.conf

service apache2 restart

# NOMOR 12

echo '
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/eden.wise.itb01.com
        ServerName eden.wise.itb01.com
        ServerAlias www.eden.wise.itb01.com

        ErrorDocument 404 /error/404.html
        ErrorDocument 500 /error/404.html
        ErrorDocument 502 /error/404.html
        ErrorDocument 503 /error/404.html
        ErrorDocument 504 /error/404.html

        <Directory /var/www/eden.wise.itb01.com/public>
                Options +Indexes
        </Directory>


        <Directory /var/www/wise.itb01.com>
                Options +FollowSymLinks -Multiviews
                AllowOverride All
        </Directory>
</VirtualHost>' > /etc/apache2/sites-available/eden.wise.itb01.com.conf

service apache2 restart