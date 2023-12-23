# 0-create_a_file.pp the code ensure that the file is avaliable

file {'/tmp/school':
ensure  => 'file',
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet'
}
