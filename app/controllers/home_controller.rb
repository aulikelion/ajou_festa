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
        @real_time = (@t.hour.to_s + @t.min.to_s).to_i
        @real_date = @t.day
        if @timetable.where(start_time: 1..@real_time, date: @real_date).where("end_time >= ?",@real_time).last.present?
          @main_neon = @timetable.where(start_time: 1..@real_time, date: @real_date).last.content
        else
          @main_neon = "아주대학교 축제기간은 24일(수)부터 26일(금)까지입니다"
        end
        if @real_time < 1200 #새벽~점심타임에 (시간 표기상 0100 정도) 엉뚱한 전광판이 나올까봐 보험 들어놨습니다.
          @main_neon = "아주대학교 축제기간은 24일(수)부터 26일(금)까지입니다"
        end
      end# 홈좀 보여줘용 ㅠㅠ
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
    if params[:tag]
      @booths = Booth.tagged_with(params[:tag]) #태그 눌렀다면 해당태그 보여주기
    else
      @booths = Booth.all 
    end
  end
  
  def administrator_sitemap
  end

  def neon
    @neons = Neon.all
  end
  

  
end
