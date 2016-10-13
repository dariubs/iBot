# -*- coding: UTF-8 -*-

# IBot class : pattern
class IBot
  def add_pattern(group, pattern)
    @group[group][:pattern].push pattern if @group.key? group
  end

  def list_patterns(group)
    @group[group][:pattern]
  end

  def match?(group, text)
    re = Regexp.union(@group[group][:pattern])

    if text.match(re)
      true
    else
      false
    end
  end

  def pattern_defined?(pattern)
    @group.each do |name, _|
      return name if match? name, pattern
    end

    nil
  end
end
