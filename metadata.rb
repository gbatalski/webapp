maintainer       "gbatalski"
maintainer_email "ghenadii.batalski@students.kit.edu"
license          "Apache 2.0"
description      "Installs/Configures webapp"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "git"
depends "jetty"

%w{ debian ubuntu }.each do |os|
	  supports os
end

