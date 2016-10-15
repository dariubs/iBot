# -*- coding: UTF-8 -*-

# IBot class : pattern
class IBot
  def add_pattern(group, pattern)
    @group[group]['pattern'].push pattern if @group.key? group
  end

  def list_patterns(group)
    @group[group]['pattern']
  end

  # Check if text match specific group
  def match_group?(group, text)
    re = Regexp.union(@group[group]['pattern'])

    if text.match(re)
      true
    else
      false
    end
  end

  # Find text group
  def text_group(text)
    @group.each do |name, _|
      return name if match_group? name, text
    end

    nil
  end
end
