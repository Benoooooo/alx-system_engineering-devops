# 2-execute_a_command.pp the code is maint to kill or terminate

exec { 'killmenow':
command => 'pkill killmenow',
path    => '/bin:/usr/bin',
}
