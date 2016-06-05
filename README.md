# Kabali

Kabali is a gem to visualize ruby YARV structures, and traverse through them step by step tracing the state of the stack at each step.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kabali'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kabali

## Usage

First require the package. 

    require 'kabali'

Take a piece of code you want to disassemble. 
    code = <<END
    puts 1+1
    END

Create the object, calling the constructor would compile it down to the object code. 

       k = Kabali::Kabali.new(code)

Traverse through the object code using the `traverse` method. 
	 
	 k.traverse

You will have to press enter at every step, to go to the next line of execution.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

You can find the classes in the file `lib/kabali.rb`. Add more methods to the `resolve` method, if you want. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/prashantbarca/kabali. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Developers

* Prashant Anantharaman
* Mahesh Devalla
* Sergey Bratus (Mentor, Advisor)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

