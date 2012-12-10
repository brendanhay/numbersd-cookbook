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
  flags NumbersD::Flags.new(settings)
end
```

**Without runit:**

More or less the same as above, but you will need to substitute the
`numbersd_runit` provider for `numbersd_install` and call `#command_line` on a `Flags`
instance to retrieve the prepared command line statement to pass to a service manager template.

```ruby
settings = NumbersD::Settings.new(version, checksum, source, user)

numbersd_install settings

flags = NumbersD::Flags.new(settings)
flags.command_line
```


## Contribute

For any problems, comments or feedback please create an issue [here on GitHub](github.com/brendanhay/numbersd-cookbook/issues).


## Licence

numbersd-cookbook is released under the [Mozilla Public License Version 2.0](http://www.mozilla.org/MPL/)
