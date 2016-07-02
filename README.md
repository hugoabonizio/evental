# Evental

**Evental** is a Crystal shard to easily write event-driven code, using callbacks to handle events.

## Installation

Add it to `Projectfile`

```crystal
deps do
  github "hugoabonizio/evental"
end
```

## Usage

Example of a simple event handler:

```crystal
require "evental"

emitter = Evental::Emitter.new
emitter.on :open do
  puts "Fake connection opened!"
end
emitter.emit :open
# => Fake connection opened!
```

## Contributing

1. Fork it ( https://github.com/hugoabonizio/evental/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [hugoabonizio](https://github.com/hugoabonizio) Hugo Abonizio - creator, maintainer
