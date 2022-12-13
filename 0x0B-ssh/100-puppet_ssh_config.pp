# Set up your client SSH configuration file
include stdlib

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'Delete identify file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentifyFile ~/.ssh/school',
  replace => true,
}
