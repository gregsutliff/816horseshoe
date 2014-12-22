class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def tour
  	@thumbs = Dir.glob("app/assets/images/gallery/thumb/*.jpg")
  end

  def location
  end

end
