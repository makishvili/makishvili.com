class YaVideo < Liquid::Tag
  Syntax = /^\s*([^\s]+)(?:\s+(\d+)\s+(\d+)\s*)?/


  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1

      if $2.nil? then
          @width = 560
          @height = 420
      else
          @width = $2.to_i
          @height = $3.to_i
      end
    else
      raise "Wrong url provided to \"yavideo\" tag"
    end
  end

  def render(context)
    "<iframe width=\"745\" height=\"559\" frameborder=\"0\" src=\"http://video.yandex.ru/iframe/makishvili/#{@id}/\"></iframe>"
  end

  Liquid::Template.register_tag "yavideo", self
end
