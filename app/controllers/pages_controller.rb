class PagesController < ApplicationController
  def home 
    @title = "Home"
  end
  def user_home
    @title = "User Home"
  end
  def student_creation
    @title = "Student Creation"
  end
  def student_search
    @title = "Student Search"
  end


end