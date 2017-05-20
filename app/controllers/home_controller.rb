class HomeController < ApplicationController
  before_action :admin?
  def index
    @t=Time.zone.now 
    @timetables=Timetable.all
    @timetable = Timetable.all
    @colorpackage = ["EA3556", "61D2D6", "EDE5E2", "ED146F", "EDDE45","9BF0E9"] # 컬러 조합 출처 : http://www.colourlovers.com/fashion/trends/street-fashion/7896/Floral_Much
    @neons = Neon.all
    
    
      unless @neons.last.nil? #네온 쪽 DB가 비어있는지 판단 => 비어있지 않으면 저장된 메세지들을 랜덤으로 출력
        @main_neon = @neons.order("RANDOM()").first.message #네온 DB를 '남김없이' 지우지 않으면 타임테이블이 출력되지 않습니다. 이 부분은 실제 전광판을 관리하실 분에게 확실히 고지해야 될 것 같습니다.
      else
        @main_neon = "2017 아주대 축제 사이트" #탐테쪽 뷰 완성되는대로 고쳐야 할 줄
      end
  end

  def lineup
  end

  def timetable
    @timetable = Timetable.all
    @colorpackage = ["EA3556", "61D2D6", "EDE5E2", "ED146F", "EDDE45","9BF0E9"] # 컬러 조합 출처 : http://www.colourlovers.com/fashion/trends/street-fashion/7896/Floral_Much
  end

  def booth
  
      @search = Booth.search(params[:q])
      if params[:tag]
        @booths = Booth.tagged_with(params[:tag])
      elsif
        @booths = @search.result
      else
        @booths = Booth.all
      end
  end

  def map
    @booths = Booth.all # 이것은 혹시 몰라서 남겨놓은 코드입니당^_^
    #@t=Time.zone.now
    #@boothlist = Array.new
    #@booths.each do |b|
    #  case @t.day
    #  when b.sche.day
    #    @boothlist.push(b)
    #  when b.sche_2.day
    #    @boothlist.push(b)
    #  when b.day3.day
    #    @boothlist.push(b)
    #  else
    #  end
    #end 
  end
  
  def administrator_sitemap
  end

  def neon
    @neons = Neon.all
  end
  

  
end
