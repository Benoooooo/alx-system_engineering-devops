# 1-install_a_package.pp the code us ensure

package { 'Flask':
ensure   => '2.1.0',
provider => 'pip3'
}
package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}