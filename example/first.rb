require 'ibot'

bot = IBot.new

bot.add_group :greeting
bot.add_group :by

bot.add_pattern :greeting, /hi/i
bot.add_pattern :greeting, /hello/i

bot.add_pattern :by, /goodby/i

bot.add_response :greeting, 'Hi'
bot.add_response :greeting, 'Hello'

bot.add_response :by, 'Goodby'
bot.add_response :by, 'By'

loop do
  a = gets
  b = bot.pattern_defined? a

  next if b.nil?

  if bot.match?(b, a)
    puts bot.response b
  else
    puts b
  end
end
