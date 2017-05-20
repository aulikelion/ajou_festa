class BoothinfoController < ApplicationController
  def index
      @booths = Booth.all   #부스 전부 받아왔음
  end

  def map
   #실시간 갖고와서 그것에 해당하는 부스만 띄우는 기능 만들기
  end
end
