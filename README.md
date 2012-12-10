# numbersd-cookbook

Table of Contents
-----------------

* [Usage](#usage)
* [Contribute](#contribute)
* [Licence](#licence)


## Usage

This cookbook provides two LWRPs, `install` and `runit`. Internally `runit`
calls `install` implicitly, and is what I currently use to manage numbersd.

All flags can be overriden from their defaults by using the attr_writers
specified in `./libraries/flags.rb`, see: [numbersd available flags](https://github.com/brendanhay/numbersd#available-flags) for a full list.

**With runit:**

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

**Without runit:**

The same as above, but you will need to call `#command_line` on a `Flags`
instance to retrieve the full list of flags to pass to a service manager template.

```ruby
flags = NumbersD::Flags.new(settings)
flags.command_line
```


## Contribute

For any problems, comments or feedback please create an issue [here on GitHub](github.com/brendanhay/numbersd-cookbook/issues).


## Licence

numbersd-cookbook is released under the [Mozilla Public License Version 2.0](http://www.mozilla.org/MPL/)
