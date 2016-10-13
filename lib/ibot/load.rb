# -*- coding: UTF-8 -*-

require 'json'

# IBot class : pattern
class IBot
  def load_json(file)
    raw = File.read(file)
    parsed = JSON.parse(raw)
    parsed.each do |k, _|
      size  = parsed[k]['pattern'].length
      n     = []
      0.upto(size - 1) do |i|
        n.push(Regexp.new(parsed[k]['pattern'][i]))
      end
      parsed[k]['pattern'] = n
    end
    @group = parsed
  end
end
