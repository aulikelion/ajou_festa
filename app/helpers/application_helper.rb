module ApplicationHelper
    def tag_icons(tag_list)
      tag_list.map do | tag |
        "<a href='/booths?tag=#{CGI::escape(tag)}' class='tag'>#{tag}</a>"
      end.join(', ').html_safe
    end
    def tag_map_icons(tag_list)
      tag_list.map do | tag |
      "<a href='/home/map?tag=#{CGI::escape(tag)}' class='tag'>#{tag}</a>"
      end.join(', ').html_safe
    end
    def tag_info_icons(tag_list)
        tag_list.map do | tag |
        "<a href='/boothinfo/index?tag=#{CGI::escape(tag)}' class='tag'>#{tag}</a>"
      end.join(', ').html_safe
    end
end
