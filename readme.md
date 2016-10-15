iBot [![Build Status](https://travis-ci.org/dariubs/iBot.svg?branch=master)](https://travis-ci.org/dariubs/iBot)
====

Make simple bots with ruby.

Install
-------
```
gem install ibot
```

Usage
-----
1. Create new bot

```ruby
bot = IBot.new('mybot')
```

2. Create some group

```ruby
bot.add_group 'greeting'
bot.add_group 'goodby'
```

3. Define some patterns for each group

```ruby
bot.add_pattern 'greeting', /hi/i
bot.add_pattern 'greeting', /hello/i
```

4. Define some response for each group

```ruby
bot.add_response 'greeting', 'Hello.'
bot.add_response 'greeting', 'Holla.'
```

5. Response to text

```ruby
bot.response bot.text_group 'Hello, world!'
```

[This example gist](https://gist.github.com/dariubs/a2c4d5cb3e41c332a954b53b6de75fbc)

Author
------
Dariush Abbasi < [@dariubs](https://github.com/dariubs) >

License
-------
MIT
