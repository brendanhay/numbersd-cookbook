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

# See: ./libraries/paths.rb
provides "install(:paths)"

# See: ./libraries/paths.rb,
#      ./libraries/flags.rb
provides "runit(:paths, :flags)"
