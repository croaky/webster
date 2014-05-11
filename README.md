# Webster

Generate random short words. Good for human-readable confirmation codes.

## Install

    gem install webster

## Usage

    require 'rubygems'
    require 'webster'

    webster = Webster.new
    webster.random_word

    => "spoonless"

## Shoulda macro

     context "Subscription#activation_code" do
       setup do
         subscription = Factory :subscription
         @word = subscription.set_activation_code
       end

       should_be_webster_word "@word"
     end

## Authors

Webster was written for [Umbrella Today?](http://umbrellatoday.com) by
[thoughtbot](http://thoughtbot.com).

It was extracted into a stand-alone Ruby gem by Dan Croak and Jared Carroll.

## License

MIT License, same terms as Ruby
