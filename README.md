# Saorin::Server::Reel

[![Gem Version](https://badge.fury.io/rb/saorin-server-reel.svg)](http://badge.fury.io/rb/saorin-server-reel)
[![Build Status](https://travis-ci.org/mashiro/saorin-server-reel.svg)](https://travis-ci.org/mashiro/saorin-server-reel)

reel server adapter for saorin

## Installation

Add this line to your application's Gemfile:

    gem 'saorin-server-reel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install saorin-server-reel

## Usage

```
require 'saorin'
require 'saorin/server/reel'

class Handler
  def trape
    'peropero'
  end
end

Saorin::Server.start Handler.new, :host => 'localhost', :port => 8080, :adapter => :reel
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
