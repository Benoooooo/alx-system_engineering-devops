# Step 1: Define the Nginx class
class nginx {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure  => running,
    enable  => true,
    require => Package['nginx'],
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    content => 'Hello World!',
    require => Package['nginx'],
  }

  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => '
server {
    listen 80;
    server_name your_domain.com;

    location /redirect_me {
        return 301 https://example.com/new_page;
    }

    location / {
        root   /var/www/html;
        index  index.html;
    }
}',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
}

# Step 2: Include the Nginx class
include nginx
