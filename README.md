# motion-browser

If you have content in your application that needs to open up a webpage, you might not want that opened in Safari, so instead drop this in and use the easy solution.

It includes the common back, forward, and share buttons.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-browser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-browser

## Usage

As a drop in browser, I wanted to make it extremely easy to use. All you have to do is create the controller, push it to your navigation controller or present it as a modal view controller.

You can create the controller by simply doing this:

```ruby
MIM::MotionBrowserController.alloc.initWithURL('https://motioninmotion.tv/')
```

Then simply, push it or present it.

```ruby
# push it to your navigation stack
navigation_controller.pushViewController(@browser, animated: true)

# present it modally
UIWindow.keyWindow.rootViewController.presentViewController(@browser, animated: true, completion: -> {
  # do something after it has been shown
})
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
