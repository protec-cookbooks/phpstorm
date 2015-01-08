name             "phpstorm"
maintainer       "Protec Innovations"
maintainer_email "dev@protecinnovations.co.uk"
license          "All rights reserved"
description      "Installs PhpStorm"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ ubuntu }.each do |os|
    supports os
end

%w{ oracle-java }.each do |cb|
    depends cb
end

attribute "phpstorm/version",
    :display_name => "PhpStorm Version",
    :description => "Version of PhpStorm to download and install",
    :default => "8.0.2"

