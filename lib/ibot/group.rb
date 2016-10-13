# -*- coding: UTF-8 -*-

# IBot class : group
class IBot
  def list_groups
    @group
  end

  def add_group(name)
    @group[name] = {}
    @group[name]['pattern']  = []
    @group[name]['response'] = []

    @group[name]
  end
end
