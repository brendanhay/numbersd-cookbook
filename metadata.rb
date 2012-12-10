#
# Info
#

maintainer       "Brendan Hay"
maintainer_email "brendan.g.hay@gmail.com"
description      "Chef Providers for Installing and Configuring numbersd instances"
license          "MPL 2.0"
version          "0.1.0"


#
# Dependencies
#

depends "runit"


#
# Resources
#

# See: ./libraries/settings.rb
provides "install(:settings)"

# See: ./libraries/settings.rb,
#      ./libraries/flags.rb
provides "runit(:settings, :flags)"
