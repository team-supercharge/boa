# Boa

Boa is a simple gem to initialize VIPER projects and add modules to them.

## Installation

Install gem with:

    $ gem install boa

## Usage

1. Create an Xcode project

2. Initialize basic VIPER structure with

```
boa init
```

3. Input your project name and the author (these will be used in generated files). You can change these settings in `.boa.yml`

4. Create your module with

```
boa module create Example
```

## Changes

#### v0.2.0
  * added class prefix option

#### v0.1.1
  * initial version

## Contributing

Contributions are always welcome! :)

1. Fork it ( http://github.com/jbslabs/boa/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
