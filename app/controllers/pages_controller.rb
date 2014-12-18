class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def tour
  	@thumbs = Dir.glob("app/assets/images/gallery/*_thumb.jpg")
  end
end
