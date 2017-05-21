class BoothinfoController < ApplicationController
  def index
      if params[:tag]
        @booths = Booth.tagged_with(params[:tag]) #태그 눌렀다면 해당태그 보여주기
      else
        @booths = Booth.all 
      end
  end

  def map
   
  end
end
