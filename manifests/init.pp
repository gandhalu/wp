class wp {
exec{"wget https://wordpress.org/latest.tar.gz":
cwd=> "/var/www/html/",
path=> "/usr/bin/"
}
exec{"tar -xvzf /var/www/html/latest.tar.gz":
cwd=> "/var/www/html/",
path=> "/bin/",
require=> Exec['wget https://wordpress.org/latest.tar.gz']
}
exec{"cp -R /var/www/html/wordpress/* /var/www/html/":
cwd=> "/var/www/html/",
path=> "/bin/",
require=> Exec['tar -xvzf /var/www/html/latest.tar.gz']
}
}
