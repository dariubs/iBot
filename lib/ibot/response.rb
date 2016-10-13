# -*- coding: UTF-8 -*-

# IBot class : response
class IBot
  def add_response(group, response)
    @group[group]['response'].push response if @group.key? group
  end

  def list_response(group)
    @group[group]['response']
  end

  def response(group)
    @group[group]['response'].sample
  end
end
