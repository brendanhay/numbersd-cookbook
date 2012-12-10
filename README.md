# numbersd-cookbook

Table of Contents
-----------------

* [Usage](#usage)
* [Contribute](#contribute)
* [Licence](#licence)


## Usage

> TODO

If you're using `runit`:

```ruby
depends "numbersd"

version  = .. # Version to install
checksum = .. # sha256sum of the tarball
source   = .. # A url specifying the remote_file for Chef to retrieve
user     = .. # The user to chown/run numbersd as

settings = NumbersD::Settings.new(version, checksum, source, user)

numbersd_runit settings do
  NumbersD::Flags.new(settings)
end
```

Flags can be overriden from their defaults by using the attr_writers
specified in `./libraries/flags.rb`, see: [numbersd available flags](https://github.com/brendanhay/numbersd#available-flags) for a full list.


## Contribute

For any problems, comments or feedback please create an issue [here on GitHub](github.com/brendanhay/numbersd-cookbook/issues).


## Licence

numbersd-cookbook is released under the [Mozilla Public License Version 2.0](http://www.mozilla.org/MPL/)
